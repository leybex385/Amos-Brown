function Update-Page {
    param($file, $newTitle, $newContent)
    
    $path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\$file"
    $html = [System.IO.File]::ReadAllText($path)
    
    # Replace H1
    $html = $html -replace '(?s)<h1 class="subpage-title">.*?</h1>', "<h1 class=`"subpage-title`">$newTitle</h1>"
    
    # Replace H2 to remove it, because there is no H2 in the exact original content! Wait, H2 is currently inside the div, which will be completely replaced.
    
    $startStr = '<div class="container subpage-editorial">'
    $endStr = '</div>'
    
    $startIndex = $html.IndexOf($startStr)
    $restHtml = $html.Substring($startIndex + $startStr.Length)

    $endIndexRelative = $restHtml.IndexOf($endStr)
    $endIndex = $startIndex + $startStr.Length + $endIndexRelative
    
    $prefix = $html.Substring(0, $startIndex + $startStr.Length)
    $suffix = $html.Substring($endIndex)
    
    $finalHtml = $prefix + "`n" + $newContent + "`n        " + $suffix
    
    $utf8NoBom = New-Object System.Text.UTF8Encoding $False
    [System.IO.File]::WriteAllText($path, $finalHtml, $utf8NoBom)
}

$c1 = @"
            <p>Our team continuously evaluates multiple dimensions of market information, including:</p>
            <ul>
                <li>Real-time price movements;</li>
                <li>Historical market structures;</li>
                <li>Market volatility conditions;</li>
                <li>Trading volume and liquidity changes;</li>
                <li>Capital flow patterns;</li>
                <li>Macroeconomic indicators;</li>
                <li>Market sentiment factors.</li>
            </ul>
            <p>Rather than focusing only on whether prices are moving higher or lower, our objective is to understand the underlying market dynamics and the factors influencing price movements.</p>
"@

$c2 = @"
            <p>After collecting market data, our team applies quantitative research methods to conduct deeper analysis, including:</p>
            <ul>
                <li>Historical pattern analysis;</li>
                <li>Market trend identification;</li>
                <li>Volatility evaluation;</li>
                <li>Probability assessment;</li>
                <li>Opportunity filtering.</li>
            </ul>
            <p>The purpose of this process is not to predict every future market movement with certainty. Instead, it is designed to evaluate market conditions systematically and identify opportunities with stronger probability characteristics.</p>
"@

$c3 = @"
            <p>After more than 30 years in financial markets, I believe the most important ability in investing is not simply finding opportunities it is managing risk.</p>
            <p>Our team has established an independent risk assessment process that evaluates:</p>
            <ul>
                <li>Overall market conditions;</li>
                <li>Volatility levels;</li>
                <li>Potential risk factors;</li>
                <li>Capital management considerations;</li>
                <li>Risk-to-reward relationships.</li>
            </ul>
            <p>Every research outcome must go through risk evaluation before being considered for further action. Opportunities are only meaningful when they are evaluated within a disciplined risk framework.</p>
"@

$c4 = @"
            <p>I have always believed that technology can significantly improve analytical efficiency, but it cannot completely replace professional experience and judgment.</p>
            <p>Therefore, our approach is not based solely on models. Instead, we combine:</p>
            <ul>
                <li>Quantitative data analysis;</li>
                <li>Research-driven methodologies;</li>
                <li>Financial market experience;</li>
                <li>Professional risk management principles.</li>
            </ul>
            <p>By integrating these elements, our goal is to create a more objective, structured, and disciplined approach to financial market analysis.</p>
"@

Update-Page "market-data-collection.html" "Market Data Collection &amp; Research System" $c1
Update-Page "quantitative-analysis.html" "Quantitative Analysis &amp; Model Evaluation Framework" $c2
Update-Page "risk-evaluation.html" "Risk Management System" $c3
Update-Page "portfolio-asset-allocation.html" "Combining Technology With Human Expertise" $c4

Write-Host "Success"
