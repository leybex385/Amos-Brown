$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

$c1_sup = @"
                            <p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba(11, 22, 44, 0.1);"><strong>Institutional Integration:</strong> Drawing on high-fidelity data structures analogous to those utilized during Amos Brown's tenure at UBS and Goldman Sachs, our infrastructure processes Level 3 order book imbalances and dark pool liquidity metrics. We specialize in mapping structural dislocations within the foreign exchange (FX) markets, transforming fragmented macroeconomic indicators into a cohesive, institutional-grade analytical pipeline.</p>
"@

$c2_sup = @"
                            <p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba(11, 22, 44, 0.1);"><strong>Institutional Integration:</strong> This systematic evaluation engine acts as our defense against raw volatility. By employing advanced probability analysis and Monte Carlo simulations, we evaluate non-linear cross-asset relationships, specifically targeting complex FX derivatives and global macroeconomic catalysts. The framework prioritizes absolute statistical rigor over directional guessing, ensuring our pattern identification is backed by decades of proven institutional methodology.</p>
"@

$c3_sup = @"
                            <p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba(11, 22, 44, 0.1);"><strong>Institutional Integration:</strong> Capital preservation remains the uncompromising core of our methodology, echoing the strict drawdown constraints enforced at Tier-1 institutions like J.P. Morgan. We actively compress our Value-at-Risk (VaR) parameters during anomalous liquidity events. By prioritizing Sharpe and Sortino ratio optimization, the risk engine systematically curtails exposure long before isolated price shocks can trigger structural portfolio damage.</p>
"@

$c4_sup = @"
                            <p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba(11, 22, 44, 0.1);"><strong>Institutional Integration:</strong> Algorithmic capability must be tempered by discretionary operational insight. Our dual-mandate approach merges relentless computational execution with the nuanced human oversight cultivated across 30 years on global trading desks. This synergy allows us to dynamically account for latency friction, immediate geopolitical shifts, and fluid FX market variables that abstract machine learning models cannot interpret autonomously.</p>
"@

$regex1 = '(?s)(Rather than focusing only on whether prices are moving higher or lower,.*?)(<div class="card-cta">View Full Details &rarr;</div>)'
$html = [regex]::Replace($html, $regex1, "`$1$c1_sup                            `$2")

$regex2 = '(?s)(Instead, it is designed to evaluate market conditions.*?)(<div class="card-cta">View Full Details &rarr;</div>)'
$html = [regex]::Replace($html, $regex2, "`$1$c2_sup                            `$2")

$regex3 = '(?s)(Every research outcome must go through risk evaluation.*?)(<div class="card-cta">View Full Details &rarr;</div>)'
$html = [regex]::Replace($html, $regex3, "`$1$c3_sup                            `$2")

$regex4 = '(?s)(By integrating these elements.*?structured, and disciplined approach to financial market analysis.</p>)\s*(<div class="card-cta">View Full Details &rarr;</div>)'
$html = [regex]::Replace($html, $regex4, "`$1$c4_sup                            `$2")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
