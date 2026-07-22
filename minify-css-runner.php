<?php
/**
 * CSS Minifier Script for mostech.ae
 * Run once on the server to minify all flagged CSS files.
 * Access: https://mostech.ae/minify-css-runner.php?key=mostech2026
 * DELETE THIS FILE after running it once.
 */

// Simple security key
if (!isset($_GET['key']) || $_GET['key'] !== 'mostech2026') {
    http_response_code(403);
    die('Forbidden');
}

function minifyCSS($css) {
    // Remove comments
    $css = preg_replace('/\/\*[\s\S]*?\*\//', '', $css);
    // Remove leading/trailing whitespace per line
    $css = preg_replace('/^\s+/m', '', $css);
    $css = preg_replace('/\s+$/m', '', $css);
    // Remove newlines
    $css = str_replace(array("\r\n", "\r", "\n"), '', $css);
    // Remove spaces around { } ; : ,
    $css = preg_replace('/\s*\{\s*/', '{', $css);
    $css = preg_replace('/\s*\}\s*/', '}', $css);
    $css = preg_replace('/\s*;\s*/', ';', $css);
    $css = preg_replace('/\s*:\s*/', ':', $css);
    $css = preg_replace('/\s*,\s*/', ',', $css);
    // Remove last semicolon before }
    $css = str_replace(';}', '}', $css);
    // Remove multiple spaces
    $css = preg_replace('/\s{2,}/', ' ', $css);
    return trim($css);
}

$files = array(
    __DIR__ . '/css/theme.css',
    __DIR__ . '/css/theme-elements.css',
    __DIR__ . '/css/theme-shop.css',
    __DIR__ . '/css/skins/skin-corporate-4.css',
    __DIR__ . '/vendor/rs-plugin/css/layers.css',
    __DIR__ . '/vendor/rs-plugin/css/navigation.css',
);

header('Content-Type: text/html; charset=UTF-8');
echo "<h2>CSS Minification Results</h2><pre>\n";

foreach ($files as $file) {
    if (!file_exists($file)) {
        echo "SKIP (not found): $file\n";
        continue;
    }
    
    $original = file_get_contents($file);
    $originalSize = strlen($original);
    
    $minified = minifyCSS($original);
    $newSize = strlen($minified);
    
    // Write minified content back
    file_put_contents($file, $minified);
    
    $savings = round((1 - $newSize / $originalSize) * 100, 1);
    $relPath = str_replace(__DIR__ . '/', '', $file);
    echo "✅ Minified: $relPath ($originalSize → $newSize bytes, {$savings}% smaller)\n";
}

echo "\n✅ All CSS files minified successfully!\n";
echo "\n⚠️  DELETE this file (minify-css-runner.php) from the server now!\n";
echo "</pre>";
?>
