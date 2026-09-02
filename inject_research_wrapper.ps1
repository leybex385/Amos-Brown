$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$replacement = @"
.research-section {
    position: relative;
    overflow: hidden;
}

.research-background-visual {
"@

$css = $css -replace '\.research-background-visual \{', $replacement

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
