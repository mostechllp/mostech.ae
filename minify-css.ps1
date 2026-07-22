$ErrorActionPreference = "Stop"

# List of CSS files to minify (in-place)
$cssFiles = @(
    "d:\mos\mostech.ae\vendor\rs-plugin\css\layers.css",
    "d:\mos\mostech.ae\vendor\rs-plugin\css\navigation.css",
    "d:\mos\mostech.ae\vendor\circle-flip-slideshow\css\component.css",
    "d:\mos\mostech.ae\css\theme-blog.css",
    "d:\mos\mostech.ae\css\theme.css",
    "d:\mos\mostech.ae\css\theme-shop.css",
    "d:\mos\mostech.ae\css\theme-elements.css",
    "d:\mos\mostech.ae\css\skins\skin-corporate-4.css",
    "d:\mos\mostech.ae\css\custom.css"
)

foreach ($file in $cssFiles) {
    if (Test-Path $file) {
        $original = Get-Content $file -Raw
        $originalSize = (Get-Item $file).Length

        # Remove CSS comments /* ... */
        $minified = [regex]::Replace($original, '/\*[\s\S]*?\*/', '')
        # Remove leading/trailing whitespace per line
        $minified = [regex]::Replace($minified, '(?m)^\s+', '')
        $minified = [regex]::Replace($minified, '(?m)\s+$', '')
        # Remove newlines
        $minified = [regex]::Replace($minified, '\r?\n', '')
        # Remove spaces around braces, colons, semicolons
        $minified = [regex]::Replace($minified, '\s*\{\s*', '{')
        $minified = [regex]::Replace($minified, '\s*\}\s*', '}')
        $minified = [regex]::Replace($minified, '\s*;\s*', ';')
        $minified = [regex]::Replace($minified, '\s*:\s*', ':')
        $minified = [regex]::Replace($minified, '\s*,\s*', ',')
        # Remove last semicolon before closing brace
        $minified = $minified -replace ';}', '}'

        [System.IO.File]::WriteAllText($file, $minified)
        $newSize = (Get-Item $file).Length
        $savings = [math]::Round((1 - $newSize/$originalSize) * 100, 1)
        Write-Host "Minified: $file ($originalSize -> $newSize bytes, $savings% smaller)"
    } else {
        Write-Host "SKIP (not found): $file"
    }
}

Write-Host "`nAll CSS files minified successfully!"
