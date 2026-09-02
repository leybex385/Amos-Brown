$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

# 1. Remove the supplementary content from inside the cards
$regexCards = '(?s)\s*<div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba\(197, 168, 97, 0\.3\);">.*?</div>'
$html = $html -replace $regexCards, ""


# 2. Prepare the standalone methodology section
$methodologySection = @"
        <!-- 3C. SUPPLEMENTARY METHODOLOGY -->
        <section id="supplementary-methodology" class="section dark-bg" style="padding-top: 60px; padding-bottom: 100px;">
            <div class="container">
                <div class="luxury-framework-header">
                    <h3 class="gold-subtitle">Institutional Framework Expansion</h3>
                    <h3 class="massive-headline">Methodology & Analytical Application</h3>
                    <p class="framework-intro">A deeper analysis of the quantitative research framework, FX methodologies, and the systemic decision-making logic driving the Amos Brown ecosystem.</p>
                </div>

                <div style="margin-top: 60px; display: flex; flex-direction: column; gap: 50px;">
                    
                    <!-- Area 1 -->
                    <div style="border-bottom: 1px solid rgba(197, 168, 97, 0.2); padding-bottom: 40px;">
                        <h3 style="color: var(--color-white); font-size: 1.6rem; font-weight: 300; margin-bottom: 20px;">1. Market Data Collection</h3>
                        <p style="color: var(--color-white); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-gold);">How It Operates:</strong> Our infrastructure ingests fragmented liquidity pipelines across major G10 and emerging market currency pairs, continuously evaluating structural imbalances at the Level 3 limit order book. Rather than isolating single data points, the system measures the real-time collision between global capital flows and macroeconomic catalysts, replicating the rigorous data frameworks utilized at institutions like UBS and Goldman Sachs.</p>
                        <p style="color: var(--color-gray-medium); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Institutional Context:</strong> In modern foreign exchange (FX) markets, surface-level price action often disguises profound structural weakness. By analyzing anomalous shifts in dark pool liquidity immediately preceding major central bank rate decisions, our models measure true institutional positioning rather than delayed retail sentiment.</p>
                        <p style="color: var(--color-gray-medium); font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Decision Matrix:</strong> This raw analytical depth transforms unstructured global data into a cohesive, probabilistic map—ensuring every subsequent portfolio decision is anchored by proven empirical evidence rather than subjective, reactionary intuition.</p>
                    </div>

                    <!-- Area 2 -->
                    <div style="border-bottom: 1px solid rgba(197, 168, 97, 0.2); padding-bottom: 40px;">
                        <h3 style="color: var(--color-white); font-size: 1.6rem; font-weight: 300; margin-bottom: 20px;">2. Quantitative Evaluation</h3>
                        <p style="color: var(--color-white); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-gold);">How It Operates:</strong> This engine systematically deconstructs price volatility by subjecting historical FX paradigms and cross-asset correlations to advanced Monte Carlo simulations. The framework specifically analyzes how distinct asset classes interact under extreme stress, testing non-linear market models against decades of structural macroeconomic data.</p>
                        <p style="color: var(--color-gray-medium); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Institutional Context:</strong> During sudden liquidity vacuums—such as unexpected geopolitical shocks or severe yield curve inversions—generic trend-following overlays invariably collapse. By mathematically isolating specific mean-reversion triggers and momentum exhaustion points, the model strips away market noise, identifying highly asymmetrical risk-to-reward opportunities within complex FX derivatives.</p>
                        <p style="color: var(--color-gray-medium); font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Decision Matrix:</strong> By enforcing absolute statistical rigor, our quantitative methodology prevents the deployment of capital based on unverified directional guessing, channeling resources exclusively toward scenarios demonstrating proven, high-probability institutional alpha.</p>
                    </div>

                    <!-- Area 3 -->
                    <div style="border-bottom: 1px solid rgba(197, 168, 97, 0.2); padding-bottom: 40px;">
                        <h3 style="color: var(--color-white); font-size: 1.6rem; font-weight: 300; margin-bottom: 20px;">3. Risk Management Control</h3>
                        <p style="color: var(--color-white); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-gold);">How It Operates:</strong> Risk is governed dynamically at the portfolio level by enforcing strict drawdown constraints and actively compressing Value-at-Risk (VaR) parameters. The system continuously measures shifting volatility profiles and asymmetric tail risks across all active strategies, mirroring the uncompromising capital preservation mandates maintained at Tier-1 banks like J.P. Morgan.</p>
                        <p style="color: var(--color-gray-medium); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Institutional Context:</strong> Preserving capital requires acknowledging that market conditions can fracture instantly. If severe cross-rate dislocations occur, such as sudden sovereign currency unpeggings, the risk engine systematically curtails exposure. It mandates absolute adherence to Sharpe and Sortino ratio optimization over naked directional conviction.</p>
                        <p style="color: var(--color-gray-medium); font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Decision Matrix:</strong> This disciplined firewall guarantees that no single opportunity supersedes our commitment to structural survival. Every quantitative signal is vetoed or approved based solely on mathematical capital preservation logic, ensuring robust performance consistency across any market sequence.</p>
                    </div>

                    <!-- Area 4 -->
                    <div style="padding-bottom: 20px;">
                        <h3 style="color: var(--color-white); font-size: 1.6rem; font-weight: 300; margin-bottom: 20px;">4. Synergistic Architecture</h3>
                        <p style="color: var(--color-white); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-gold);">How It Operates:</strong> Our dual-mandate synthesis merges relentless algorithmic computation with discretionary macro-level evaluation. While the quantitative engines instantly process latency friction, probability matrices, and statistical variances, our human expertise actively contextualizes subjective market drivers such as sudden regulatory interventions or nuanced central bank rhetoric.</p>
                        <p style="color: var(--color-gray-medium); margin-bottom: 15px; font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Institutional Context:</strong> Complex foreign exchange markets often operate outside historical parameters. When unpredictable, non-quantifiable events immediately restructure global capital flows, rigid autonomous algorithms cannot rapidly adapt to the paradigm shift. Our 30 years of experience navigating institutional trading desks allows us to manually modulate systematic exposure in real-time when models encounter unprecedented structural breakdown.</p>
                        <p style="color: var(--color-gray-medium); font-size: 1.05rem; line-height: 1.7;"><strong style="color: var(--color-white);">Decision Matrix:</strong> This intelligent integration bridges the chasm between mathematical theory and actual market execution. It creates an adaptive architecture that respects absolute quantitative objectivity while remaining fluid enough to manage global uncertainty with professional discretionary precision.</p>
                    </div>

                </div>
            </div>
        </section>

"@

# 3. Inject it immediately before the Case Studies section (which was moved to directly follow the cards in previous step)
$regexInject = '(?s)(<!-- 6B\. INSTITUTIONAL CASE STUDIES -->)'
$html = $html -replace $regexInject, ($methodologySection + "`n`n        `$1")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
