$css = @"

/* ==========================================================================
   Sophisticated Editorial Story Layout
   ========================================================================== */
.story-container {
    display: flex;
    flex-direction: column;
    gap: 120px;
    margin-top: 80px;
    position: relative;
}

.story-module {
    position: relative;
    padding: 20px 0;
}

.story-bg-graphic {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 55%;
    height: 140%;
    background-size: cover;
    background-position: center;
    opacity: 0.03; /* Extremely subtle structured watermark */
    z-index: 0;
    pointer-events: none;
    mix-blend-mode: screen;
}

.module-left .story-bg-graphic {
    left: -15%;
}
.module-right .story-bg-graphic {
    right: -15%;
}

.story-header {
    position: relative;
    z-index: 2;
    margin-bottom: 50px;
}

.story-header h3 {
    font-size: 2.2rem;
    color: var(--color-white);
    font-weight: 300;
    margin-bottom: 20px;
    letter-spacing: -0.5px;
}

.story-gold-rule {
    width: 60px;
    height: 2px;
    background-color: var(--color-gold);
}

.story-header.align-right {
    text-align: right;
}
.story-header.align-right .story-gold-rule {
    margin-left: auto;
}

.story-grid {
    display: grid;
    grid-template-columns: 5.5fr 4.5fr;
    gap: 80px;
    position: relative;
    z-index: 2;
}

.story-grid.reverse {
    grid-template-columns: 4.5fr 5.5fr;
}

.story-label {
    font-size: 0.8rem;
    color: var(--color-gold);
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 600;
    margin-bottom: 15px;
}

.story-primary {
    padding-right: 30px;
}
.story-grid.reverse .story-primary {
    padding-right: 0;
    padding-left: 30px;
}

.story-primary .story-text {
    font-size: 1.15rem;
    color: var(--color-white);
    line-height: 1.8;
}

.story-secondary {
    display: flex;
    flex-direction: column;
    gap: 50px;
    justify-content: center;
}

.story-context-box {
    border-left: 1px solid rgba(197, 168, 97, 0.3);
    padding-left: 30px;
}
.story-grid.reverse .story-context-box {
    border-left: none;
    border-right: 1px solid rgba(197, 168, 97, 0.3);
    padding-left: 0;
    padding-right: 30px;
    text-align: right;
}

.story-context-box .story-text {
    font-size: 1rem;
    color: var(--color-gray-soft);
    line-height: 1.7;
}

.story-matrix-box {
    background-color: rgba(26, 36, 54, 0.5); /* Subtle distinction box */
    border: 1px solid rgba(197, 168, 97, 0.1);
    padding: 35px;
    position: relative;
}

.story-grid.reverse .story-matrix-box {
    text-align: right;
}

.story-matrix-box::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 3px;
    height: 100%;
    background-color: var(--color-gold);
}

.story-grid.reverse .story-matrix-box::before {
    left: auto;
    right: 0;
}

.story-matrix-box .story-text {
    font-size: 1.05rem;
    color: var(--color-white);
    line-height: 1.7;
    font-weight: 400;
    font-style: italic; /* Editorial pull-quote aesthetic */
}

@media (max-width: 900px) {
    .story-grid, .story-grid.reverse {
        grid-template-columns: 1fr;
        gap: 40px;
    }
    .story-header.align-right { text-align: left; }
    .story-header.align-right .story-gold-rule { margin-left: 0; }
    .story-grid.reverse .story-primary { padding-left: 0; }
    .story-primary { padding-right: 0; }
    .story-grid.reverse .story-context-box {
        border-right: none;
        border-left: 1px solid rgba(197, 168, 97, 0.3);
        padding-right: 0;
        padding-left: 30px;
        text-align: left;
    }
    .story-grid.reverse .story-matrix-box { text-align: left; }
    .story-grid.reverse .story-matrix-box::before { left: 0; right: auto; }
}
"@
Add-Content -Path "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css" -Value "`n$css"

$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

$newSection = @"
                <div class="story-container">
                    
                    <!-- Module 1 -->
                    <div class="story-module module-left">
                        <div class="story-bg-graphic" style="background-image: url('arch_market_data_1788263501613.png');"></div>
                        <div class="story-header">
                            <h3 class="story-title">Market Data Collection</h3>
                            <div class="story-gold-rule"></div>
                        </div>
                        <div class="story-grid">
                            <div class="story-primary">
                                <h4 class="story-label">How It Operates</h4>
                                <p class="story-text">Our infrastructure ingests fragmented liquidity pipelines across major G10 and emerging market currency pairs, continuously evaluating structural imbalances at the Level 3 limit order book. Rather than isolating single data points, the system measures the real-time collision between global capital flows and macroeconomic catalysts, replicating the rigorous data frameworks utilized at institutions like UBS and Goldman Sachs.</p>
                            </div>
                            <div class="story-secondary">
                                <div class="story-context-box">
                                    <h4 class="story-label">Institutional Context</h4>
                                    <p class="story-text">In modern foreign exchange (FX) markets, surface-level price action often disguises profound structural weakness. By analyzing anomalous shifts in dark pool liquidity immediately preceding major central bank rate decisions, our models measure true institutional positioning rather than delayed retail sentiment.</p>
                                </div>
                                <div class="story-matrix-box">
                                    <h4 class="story-label" style="color: var(--color-white);">Decision Matrix</h4>
                                    <p class="story-text">This raw analytical depth transforms unstructured global data into a cohesive, probabilistic map&mdash;ensuring every subsequent portfolio decision is anchored by proven empirical evidence rather than subjective, reactionary intuition.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Module 2 -->
                    <div class="story-module module-right">
                        <div class="story-bg-graphic" style="background-image: url('arch_quant_analysis_1788263531265.png');"></div>
                        <div class="story-header align-right">
                            <h3 class="story-title">Quantitative Evaluation</h3>
                            <div class="story-gold-rule right"></div>
                        </div>
                        <div class="story-grid reverse">
                            <div class="story-secondary">
                                <div class="story-context-box">
                                    <h4 class="story-label">Institutional Context</h4>
                                    <p class="story-text">During sudden liquidity vacuums&mdash;such as unexpected geopolitical shocks or severe yield curve inversions&mdash;generic trend-following overlays invariably collapse. By mathematically isolating specific mean-reversion triggers and momentum exhaustion points, the model strips away market noise, identifying highly asymmetrical risk-to-reward opportunities within complex FX derivatives.</p>
                                </div>
                                <div class="story-matrix-box">
                                    <h4 class="story-label" style="color: var(--color-white);">Decision Matrix</h4>
                                    <p class="story-text">By enforcing absolute statistical rigor, our quantitative methodology prevents the deployment of capital based on unverified directional guessing, channeling resources exclusively toward scenarios demonstrating proven, high-probability institutional alpha.</p>
                                </div>
                            </div>
                            <div class="story-primary">
                                <h4 class="story-label">How It Operates</h4>
                                <p class="story-text">This engine systematically deconstructs price volatility by subjecting historical FX paradigms and cross-asset correlations to advanced Monte Carlo simulations. The framework specifically analyzes how distinct asset classes interact under extreme stress, testing non-linear market models against decades of structural macroeconomic data.</p>
                            </div>
                        </div>
                    </div>

                    <!-- Module 3 -->
                    <div class="story-module module-left">
                        <div class="story-bg-graphic" style="background-image: url('arch_risk_eval_1788263624659.png');"></div>
                        <div class="story-header">
                            <h3 class="story-title">Risk Management Control</h3>
                            <div class="story-gold-rule"></div>
                        </div>
                        <div class="story-grid">
                            <div class="story-primary">
                                <h4 class="story-label">How It Operates</h4>
                                <p class="story-text">Risk is governed dynamically at the portfolio level by enforcing strict drawdown constraints and actively compressing Value-at-Risk (VaR) parameters. The system continuously measures shifting volatility profiles and asymmetric tail risks across all active strategies, mirroring the uncompromising capital preservation mandates maintained at Tier-1 banks like J.P. Morgan.</p>
                            </div>
                            <div class="story-secondary">
                                <div class="story-context-box">
                                    <h4 class="story-label">Institutional Context</h4>
                                    <p class="story-text">Preserving capital requires acknowledging that market conditions can fracture instantly. If severe cross-rate dislocations occur, such as sudden sovereign currency unpeggings, the risk engine systematically curtails exposure. It mandates absolute adherence to Sharpe and Sortino ratio optimization over naked directional conviction.</p>
                                </div>
                                <div class="story-matrix-box">
                                    <h4 class="story-label" style="color: var(--color-white);">Decision Matrix</h4>
                                    <p class="story-text">This disciplined firewall guarantees that no single opportunity supersedes our commitment to structural survival. Every quantitative signal is vetoed or approved based solely on mathematical capital preservation logic, ensuring robust performance consistency across any market sequence.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Module 4 -->
                    <div class="story-module module-right">
                        <div class="story-bg-graphic" style="background-image: url('arch_portfolio_1788263650329.png');"></div>
                        <div class="story-header align-right">
                            <h3 class="story-title">Synergistic Architecture</h3>
                            <div class="story-gold-rule right"></div>
                        </div>
                        <div class="story-grid reverse">
                            <div class="story-secondary">
                                <div class="story-context-box">
                                    <h4 class="story-label">Institutional Context</h4>
                                    <p class="story-text">Complex foreign exchange markets often operate outside historical parameters. When unpredictable, non-quantifiable events immediately restructure global capital flows, rigid autonomous algorithms cannot rapidly adapt to the paradigm shift. Our 30 years of experience navigating institutional trading desks allows us to manually modulate systematic exposure in real-time when models encounter unprecedented structural breakdown.</p>
                                </div>
                                <div class="story-matrix-box">
                                    <h4 class="story-label" style="color: var(--color-white);">Decision Matrix</h4>
                                    <p class="story-text">This intelligent integration bridges the chasm between mathematical theory and actual market execution. It creates an adaptive architecture that respects absolute quantitative objectivity while remaining fluid enough to manage global uncertainty with professional discretionary precision.</p>
                                </div>
                            </div>
                            <div class="story-primary">
                                <h4 class="story-label">How It Operates</h4>
                                <p class="story-text">Our dual-mandate synthesis merges relentless algorithmic computation with discretionary macro-level evaluation. While the quantitative engines instantly process latency friction, probability matrices, and statistical variances, our human expertise actively contextualizes subjective market drivers such as sudden regulatory interventions or nuanced central bank rhetoric.</p>
                            </div>
                        </div>
                    </div>
                </div>
"@

$regexTarget = '(?s)                <div class="methodology-editorial-container">.*?                </div>\s*(?=</div>\s*</section>)'
$html = $html -replace $regexTarget, $newSection

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
