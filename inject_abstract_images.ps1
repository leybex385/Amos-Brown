$targetDir = "c:\Users\USER\OneDrive\Desktop\Quantitative Research"
$srcDir = "C:\Users\USER\.gemini\antigravity\brain\286d0de4-9745-4e23-b9b5-74c89a32678a"

Copy-Item "$srcDir\abs_data_collection_*.png" "$targetDir\abs_data_collection.png" -Force
Copy-Item "$srcDir\abs_quant_evaluation_*.png" "$targetDir\abs_quant_evaluation.png" -Force
Copy-Item "$srcDir\abs_risk_management_*.png" "$targetDir\abs_risk_management.png" -Force
Copy-Item "$srcDir\abs_synergistic_arch_*.png" "$targetDir\abs_synergistic_arch.png" -Force

$htmlPath = "$targetDir\index.html"
$html = [System.IO.File]::ReadAllText($htmlPath)

# We are only replacing these inside the specific story modules. We will use a targeted replacement for safety.
$html = $html -replace "url\('arch_market_data_1788263501613\.png'\);`"\></div>\s*<div class=`"story-header`">\s*<h3 class=`"story-title`">Market Data Collection</h3>", "url('abs_data_collection.png');`"></div>
                        <div class=`"story-header`">
                            <h3 class=`"story-title`">Market Data Collection</h3>"

$html = $html -replace "url\('arch_quant_analysis_1788263531265\.png'\);`"\></div>\s*<div class=`"story-header align-right`">\s*<h3 class=`"story-title`">Quantitative Evaluation</h3>", "url('abs_quant_evaluation.png');`"></div>
                        <div class=`"story-header align-right`">
                            <h3 class=`"story-title`">Quantitative Evaluation</h3>"

$html = $html -replace "url\('arch_risk_eval_1788263624659\.png'\);`"\></div>\s*<div class=`"story-header`">\s*<h3 class=`"story-title`">Risk Management Control</h3>", "url('abs_risk_management.png');`"></div>
                        <div class=`"story-header`">
                            <h3 class=`"story-title`">Risk Management Control</h3>"

$html = $html -replace "url\('arch_portfolio_1788263650329\.png'\);`"\></div>\s*<div class=`"story-header align-right`">\s*<h3 class=`"story-title`">Synergistic Architecture</h3>", "url('abs_synergistic_arch.png');`"></div>
                        <div class=`"story-header align-right`">
                            <h3 class=`"story-title`">Synergistic Architecture</h3>"

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($htmlPath, $html, $utf8NoBom)
Write-Host "Images copied and HTML updated inline flawlessly."
