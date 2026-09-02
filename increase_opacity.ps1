$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

# Increase opacity for the story background graphics
$regexOp = '(?s)(\.story-bg-graphic\s*\{.*?opacity:\s*)0\.03(;.*?\})'
$css = [regex]::Replace($css, $regexOp, "`${1}0.25`${2}")

# Let's also add a subtle gradient mask so it fades out elegantly instead of harsh edges
$regexMask = '(?s)(\.story-bg-graphic\s*\{.*?mix-blend-mode:\s*screen;)'
$css = [regex]::Replace($css, $regexMask, "`${1}`n    -webkit-mask-image: radial-gradient(ellipse at center, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 70%);`n    mask-image: radial-gradient(ellipse at center, rgba(0,0,0,1) 0%, rgba(0,0,0,0) 70%);")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
