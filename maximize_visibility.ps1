$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

# Increase opacity for the story background graphics
$regexOp = '(?s)(\.story-bg-graphic\s*\{.*?opacity:\s*)0\.25(;)'
$css = [regex]::Replace($css, $regexOp, "`${1}0.7`${2}")

# Increase the radial mask spread so more of it is visible
$regexMask1 = '(?s)(-webkit-mask-image: radial-gradient\(ellipse at center, rgba\(0,0,0,1\) 0%, rgba\(0,0,0,0\) )70%\);'
$css = [regex]::Replace($css, $regexMask1, "`${1}100%);")
$regexMask2 = '(?s)(\s*mask-image: radial-gradient\(ellipse at center, rgba\(0,0,0,1\) 0%, rgba\(0,0,0,0\) )70%\);'
$css = [regex]::Replace($css, $regexMask2, "`${1}100%);")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
