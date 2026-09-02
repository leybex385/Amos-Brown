$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$replacement = @"
.research-background-visual {
    position: absolute;
    top: 0;
    right: 0;
    width: 53%;
    height: 100%;
    z-index: 1;
}

.research-background-visual img {
"@

$css = $css -replace '\.research-background-visual img\s*\{', "$replacement{"

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
