<?php
header('Content-Type: text/plain');
set_time_limit(300);
ini_set('memory_limit', '512M');

$imgDir = __DIR__ . '/img';

function convertImageToWebp($filePath) {
    $ext = strtolower(pathinfo($filePath, PATHINFO_EXTENSION));
    if (!in_array($ext, ['jpg', 'jpeg', 'png'])) {
        return;
    }

    $webpPath = preg_replace('/\.(jpg|jpeg|png)$/i', '.webp', $filePath);
    
    // Check if webp file already exists and is newer
    if (file_exists($webpPath) && filemtime($webpPath) >= filemtime($filePath) && filesize($webpPath) > 0) {
        echo "Already exists: $webpPath\n";
        return;
    }

    $image = null;
    if ($ext === 'jpg' || $ext === 'jpeg') {
        $image = @imagecreatefromjpeg($filePath);
    } elseif ($ext === 'png') {
        $image = @imagecreatefrompng($filePath);
        if ($image) {
            imagepalettetotruecolor($image);
            imagealphablending($image, true);
            imagesavealpha($image, true);
        }
    }

    if (!$image) {
        echo "Failed to load image: $filePath\n";
        return;
    }

    $success = @imagewebp($image, $webpPath, 85);
    imagedestroy($image);

    if ($success) {
        echo "Converted: $filePath -> $webpPath (" . filesize($webpPath) . " bytes)\n";
    } else {
        echo "Error converting: $filePath\n";
    }
}

function processDirectory($dir) {
    $items = scandir($dir);
    foreach ($items as $item) {
        if ($item === '.' || $item === '..') continue;
        $path = $dir . '/' . $item;
        if (is_dir($path)) {
            processDirectory($path);
        } else {
            convertImageToWebp($path);
        }
    }
}

echo "Starting image conversion to WebP...\n";
if (file_exists($imgDir)) {
    processDirectory($imgDir);
    echo "Image conversion complete!\n";
} else {
    echo "Directory not found: $imgDir\n";
}
