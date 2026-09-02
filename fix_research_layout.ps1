$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$regexFind = '(?s)\.research-background-visual\s*\{.*?\.research-background-visual img\s*\{\{?\s*width:\s*100%;\s*height:\s*100%;\s*object-fit:\s*cover;\s*object-position:\s*left center;\s*\}'

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
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: left center;
    -webkit-mask-image: linear-gradient(to right, transparent 0%, black 15%, black 100%);
    mask-image: linear-gradient(to right, transparent 0%, black 15%, black 100%);
}
"@

$css = [regex]::Replace($css, $regexFind, $replacement)

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
