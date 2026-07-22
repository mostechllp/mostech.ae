<?php
/**
 * On-The-Fly WebP Auto-Generator & Server Fallback
 * Automatically converts requested .webp images from original PNG/JPG source files on the server.
 */

// Bulk conversion action if triggered directly: /webp-server.php?action=bulk
if (isset($_GET['action']) && $_GET['action'] === 'bulk') {
    header('Content-Type: text/plain');
    set_time_limit(300);
    ini_set('memory_limit', '512M');
    echo "Starting Bulk WebP Conversion on Server...\n";
    $imgDir = __DIR__ . '/img';
    if (file_exists($imgDir)) {
        convertFolder($imgDir);
        echo "Bulk conversion complete!\n";
    } else {
        echo "Image directory not found.\n";
    }
    exit;
}

$file = isset($_GET['file']) ? $_GET['file'] : '';
// Prevent path traversal
$file = str_replace(array('../', '..\\', './', '.\\'), '', $file);

if (empty($file)) {
    header("HTTP/1.1 404 Not Found");
    exit;
}

$basePath = __DIR__ . '/' . $file;
$webpPath = $basePath . '.webp';

// If webp file exists on disk, serve it directly
if (file_exists($webpPath) && filesize($webpPath) > 0) {
    header('Content-Type: image/webp');
    header('Content-Length: ' . filesize($webpPath));
    readfile($webpPath);
    exit;
}

// Find corresponding original file (.png, .jpg, .jpeg)
$originalFile = null;
$exts = array('.png', '.jpg', '.jpeg', '.PNG', '.JPG', '.JPEG');
foreach ($exts as $ext) {
    if (file_exists($basePath . $ext)) {
        $originalFile = $basePath . $ext;
        break;
    }
}

if (!$originalFile) {
    header("HTTP/1.1 404 Not Found");
    exit;
}

// Create WebP from original image
$imgExt = strtolower(pathinfo($originalFile, PATHINFO_EXTENSION));
$image = null;

if ($imgExt === 'jpg' || $imgExt === 'jpeg') {
    $image = @imagecreatefromjpeg($originalFile);
} elseif ($imgExt === 'png') {
    $image = @imagecreatefrompng($originalFile);
    if ($image) {
        imagepalettetotruecolor($image);
        imagealphablending($image, true);
        imagesavealpha($image, true);
    }
}

if ($image) {
    @imagewebp($image, $webpPath, 85);
    imagedestroy($image);
}

// Serve created WebP or fallback to original image
if (file_exists($webpPath) && filesize($webpPath) > 0) {
    header('Content-Type: image/webp');
    header('Content-Length: ' . filesize($webpPath));
    readfile($webpPath);
    exit;
} else {
    // Serve original image as fallback
    header('Content-Type: ' . ($imgExt === 'png' ? 'image/png' : 'image/jpeg'));
    header('Content-Length: ' . filesize($originalFile));
    readfile($originalFile);
    exit;
}

function convertFolder($dir) {
    $items = scandir($dir);
    foreach ($items as $item) {
        if ($item === '.' || $item === '..') continue;
        $path = $dir . '/' . $item;
        if (is_dir($path)) {
            convertFolder($path);
        } else {
            $ext = strtolower(pathinfo($path, PATHINFO_EXTENSION));
            if (in_array($ext, array('jpg', 'jpeg', 'png'))) {
                $webpPath = preg_replace('/\.(jpg|jpeg|png)$/i', '.webp', $path);
                if (!file_exists($webpPath) || filesize($webpPath) === 0) {
                    $img = null;
                    if ($ext === 'jpg' || $ext === 'jpeg') {
                        $img = @imagecreatefromjpeg($path);
                    } elseif ($ext === 'png') {
                        $img = @imagecreatefrompng($path);
                        if ($img) {
                            imagepalettetotruecolor($img);
                            imagealphablending($img, true);
                            imagesavealpha($img, true);
                        }
                    }
                    if ($img) {
                        @imagewebp($img, $webpPath, 85);
                        imagedestroy($img);
                        echo "Converted: $webpPath\n";
                    }
                }
            }
        }
    }
}
