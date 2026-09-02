$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

# Extract 6B block exactly
$regex6B = "(?s)\s*<!-- 6B\. INSTITUTIONAL CASE STUDIES -->.*?((?=<!-- 7\. CONTACT -->)|(?=</main>))"
$match = [regex]::Match($html, $regex6B)
if ($match.Success) {
    $block6B = $match.Groups[0].Value
    
    # Remove 6B from its current location
    $html = $html -replace $regex6B, "`n"

    # Insert it right before 4. INVESTMENT PHILOSOPHY
    $regex4 = "(?s)<!-- 4\. INVESTMENT PHILOSOPHY -->"
    $html = $html -replace $regex4, ($block6B.TrimEnd() + "`n`n        <!-- 4. INVESTMENT PHILOSOPHY -->")
    
    $utf8NoBom = New-Object System.Text.UTF8Encoding $False
    [System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
    Write-Host "Success"
}
else {
    Write-Host "Failed to find 6B"
}
