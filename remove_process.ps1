$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$lines = Get-Content $path
# We want to remove lines 374 to 433 (0-indexed 373 to 432).
# Let's double check by matching the literal string.

$html = [System.IO.File]::ReadAllText($path)
$searchRegex = "(?s)\s*<div class=`"process-section`">.*?</div>\s*</div>\s*</div>"

# Actually regex is safer without broad .*? if not careful. Let's do it cleanly by searching between known anchors.
$anchorStart = '<div class="process-section">'
$anchorEnd = '<div class="process-statement-bar">'

# Better yet:
$html = $html -replace '(?s)\s*<div class="process-section">.*?<div class="process-statement-bar">.*?</div>\s*</div>\s*</div>', ''

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
