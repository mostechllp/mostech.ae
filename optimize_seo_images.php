<?php
header('Content-Type: text/plain');

$images = [
    'local_seo',
    'off_page_seo',
    'on_page_seo',
    'technical_seo'
];

$imgDir = __DIR__ . '/img/';

foreach ($images as $name) {
    $webpPath = $imgDir . $name . '.webp';
    $jpgPath  = $imgDir . $name . '.jpg';
    $pngPath  = $imgDir . $name . '.png';

    if (!file_exists($webpPath)) {
        echo "Missing: $webpPath\n";
        continue;
    }

    $origSize = filesize($webpPath);
    $img = @imagecreatefromwebp($webpPath);

    if (!$img) {
        echo "Failed to load WebP: $webpPath\n";
        continue;
    }

    // 1. Optimize WebP in-place
    imagepalettetotruecolor($img);
    imagealphablending($img, true);
    imagesavealpha($img, true);

    $tempWebp = $webpPath . '.tmp';
    if (@imagewebp($img, $tempWebp, 80)) {
        rename($tempWebp, $webpPath);
        echo "Optimized $name.webp: $origSize -> " . filesize($webpPath) . " bytes\n";
    }

    // 2. Generate JPG fallback
    $bg = imagecreatetruecolor(imagesx($img), imagesy($img));
    $white = imagecolorallocate($bg, 255, 255, 255);
    imagefill($bg, 0, 0, $white);
    imagecopy($bg, $img, 0, 0, 0, 0, imagesx($img), imagesy($img));
    if (@imagejpeg($bg, $jpgPath, 85)) {
        echo "Generated $name.jpg (" . filesize($jpgPath) . " bytes)\n";
    }
    imagedestroy($bg);

    // 3. Generate PNG fallback
    if (@imagepng($img, $pngPath, 6)) {
        echo "Generated $name.png (" . filesize($pngPath) . " bytes)\n";
    }

    imagedestroy($img);
}

echo "\nDone processing SEO images!\n";
?>
