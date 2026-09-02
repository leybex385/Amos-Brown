function Append-Case-Studies {
    $path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
    $html = [System.IO.File]::ReadAllText($path)
    
    $searchRegex = "(?s)        <!-- 7\. CONTACT -->"
    
    $content = @"
        <!-- 6B. INSTITUTIONAL CASE STUDIES -->
        <section id="institutional-case-studies" class="section dark-bg">
            <div class="container">
                <div class="luxury-framework-header">
                    <h3 class="gold-subtitle">Real-World Market Validation</h3>
                    <h3 class="massive-headline">Institutional Case Studies & Quantitative Alpha</h3>
                    <p class="framework-intro">Our quantitative pipelines are battle-tested against some of the most complex liquidity and volatility events in modern financial history. By executing principles integrated during Amos Brown's tenure with leading institutions like <strong>J.P. Morgan, Goldman Sachs,</strong> and <strong>UBS</strong>, our systems convert structural uncertainty into high-probability institutional opportunity.</p>
                </div>

                <div class="research-grid-new" style="margin-top: 50px;">
                    <!-- Case Study 1 -->
                    <div class="research-card-new" style="cursor: default;">
                        <div class="card-image-box" style="height: 180px;">
                            <span class="card-tag">LIQUIDITY ARBITRAGE</span>
                            <img src="arch_market_data_1788263501613.png" alt="2020 Market Volatility">
                        </div>
                        <div class="card-content-new">
                            <h3 style="color: var(--color-navy); font-size: 1.3rem; margin-bottom: 10px;">2020 Global Liquidity Crisis</h3>
                            <p class="card-desc" style="font-size: 0.95rem; line-height: 1.6;">During the unprecedented VIX expansion of March 2020, traditional predictive models failed due to correlation breakdowns. By utilizing advanced Monte Carlo simulations and processing Tier-1 prime broker Level 3 order book data (comparable to Bloomberg B-PIPE architectures), our framework identified severe statistical dislocations in safe-haven FX pairs. This successfully extracted mean-reversion alpha while actively compressing Value-at-Risk (VaR) parameters.</p>
                        </div>
                    </div>

                    <!-- Case Study 2 -->
                    <div class="research-card-new" style="cursor: default;">
                        <div class="card-image-box" style="height: 180px;">
                            <span class="card-tag">STATISTICAL ARBITRAGE</span>
                            <img src="arch_quant_analysis_1788263531265.png" alt="Swiss Franc Unpegging">
                        </div>
                        <div class="card-content-new">
                            <h3 style="color: var(--color-navy); font-size: 1.3rem; margin-bottom: 10px;">The 2015 Swiss Franc Unpegging</h3>
                            <p class="card-desc" style="font-size: 0.95rem; line-height: 1.6;">When the Swiss National Bank unexpectedly unpegged the CHF from the Euro, institutional liquidity vanished in milliseconds, triggering catastrophic drawdowns for generic trend-following algorithms. Integrating stringent structural drawdown constraints, our systems detected the immediate foundational break across major cross-rates. The risk management engine systematically halted directional exposure, prioritizing strict Sharpe and Sortino ratio optimization.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 7. CONTACT -->
"@
    
    $html = $html -replace $searchRegex, $content
    
    $utf8NoBom = New-Object System.Text.UTF8Encoding $False
    [System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
}

Append-Case-Studies
Write-Host "Success"
