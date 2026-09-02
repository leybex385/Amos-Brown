$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$regexMask1 = '(?s)-webkit-mask-image:.*?100%\);'
$css = [regex]::Replace($css, $regexMask1, "-webkit-mask-image: radial-gradient(closest-side, rgba(0,0,0,1) 40%, rgba(0,0,0,0) 95%);")

$regexMask2 = '(?s)mask-image: radial-gradient\(ellipse.*?100%\);'
$css = [regex]::Replace($css, $regexMask2, "mask-image: radial-gradient(closest-side, rgba(0,0,0,1) 40%, rgba(0,0,0,0) 95%);")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
