$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

# Extract 3B block completely
$regex3B = "(?s)\s*<!-- 3B\. COMBINING TECHNOLOGY WITH HUMAN EXPERTISE -->.*?<section id=`"technology-expertise`".*?</section>"
$html = $html -replace $regex3B, ""

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
