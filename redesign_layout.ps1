$css = @"
/* ==========================================================================
   Institutional Cases Horizontal Layout
   ========================================================================== */
.institutional-cases-container {
    margin-top: 60px;
    display: flex;
    flex-direction: column;
    gap: 80px;
}

.institutional-case-row {
    display: flex;
    align-items: center;
    gap: 60px;
    border-top: 1px solid rgba(197, 168, 97, 0.3); /* Thin gold divider */
    padding-top: 40px;
}

.institutional-case-row.reverse {
    flex-direction: row-reverse;
}

.case-image-col {
    flex: 1;
    position: relative;
    height: 350px;
    overflow: hidden;
    background-color: var(--color-navy-light);
}

.case-image-col img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    mix-blend-mode: luminosity; /* Professional editorial edge */
    opacity: 0.7;
    transition: opacity 0.4s ease, transform 0.8s ease;
}

.institutional-case-row:hover .case-image-col img {
    opacity: 1;
    transform: scale(1.02);
}

.case-content-col {
    flex: 1;
    color: var(--color-white);
}

.case-label {
    font-size: 0.75rem;
    color: var(--color-gold);
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-bottom: 15px;
    display: inline-block;
    border: 1px solid var(--color-gold);
    padding: 6px 12px;
    border-radius: 2px;
}

.case-title {
    font-size: 2.1rem;
    font-weight: 300;
    margin-bottom: 20px;
    color: var(--color-white);
    letter-spacing: -0.5px;
}

.case-description {
    font-size: 1.05rem;
    color: var(--color-gray-medium);
    line-height: 1.8;
}

@media (max-width: 900px) {
    .institutional-case-row, .institutional-case-row.reverse {
        flex-direction: column;
        gap: 30px;
    }
    .case-image-col {
        width: 100%;
        height: 250px;
    }
}
"@
Add-Content -Path "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css" -Value "`n$css"

$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

$searchRegex = "(?s)<div class=`"research-grid-new`" style=`"margin-top: 50px;`">.*?<!-- 7\. CONTACT -->"
$content = @"
                <div class="institutional-cases-container">
                    <!-- Case Study 1 -->
                    <div class="institutional-case-row">
                        <div class="case-image-col">
                            <img src="arch_market_data_1788263501613.png" alt="2020 Market Volatility">
                        </div>
                        <div class="case-content-col">
                            <span class="case-label">LIQUIDITY ARBITRAGE</span>
                            <h3 class="case-title">2020 Global Liquidity Crisis</h3>
                            <p class="case-description">During the unprecedented VIX expansion of March 2020, traditional predictive models failed due to correlation breakdowns. By utilizing advanced Monte Carlo simulations and processing Tier-1 prime broker Level 3 order book data (comparable to Bloomberg B-PIPE architectures), our framework identified severe statistical dislocations in safe-haven FX pairs. This successfully extracted mean-reversion alpha while actively compressing Value-at-Risk (VaR) parameters.</p>
                        </div>
                    </div>

                    <!-- Case Study 2 -->
                    <div class="institutional-case-row reverse">
                        <div class="case-image-col">
                            <img src="arch_quant_analysis_1788263531265.png" alt="Swiss Franc Unpegging">
                        </div>
                        <div class="case-content-col">
                            <span class="case-label">STATISTICAL ARBITRAGE</span>
                            <h3 class="case-title">The 2015 Swiss Franc Unpegging</h3>
                            <p class="case-description">When the Swiss National Bank unexpectedly unpegged the CHF from the Euro, institutional liquidity vanished in milliseconds, triggering catastrophic drawdowns for generic trend-following algorithms. Integrating stringent structural drawdown constraints, our systems detected the immediate foundational break across major cross-rates. The risk management engine systematically halted directional exposure, prioritizing strict Sharpe and Sortino ratio optimization.</p>
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
Write-Host "Success"
