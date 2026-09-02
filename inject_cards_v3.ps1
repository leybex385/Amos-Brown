$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html"
$html = [System.IO.File]::ReadAllText($path)

$c1_new = @"
                            <div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(197, 168, 97, 0.3);">
                                <h4 style="color: var(--color-gold); font-size: 0.85rem; letter-spacing: 1px; text-transform: uppercase; margin-bottom: 10px;">Methodology & Analytical Application</h4>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>How It Operates:</strong> Our infrastructure ingests fragmented liquidity pipelines across major G10 and emerging market currency pairs, continuously evaluating structural imbalances at the Level 3 limit order book. Rather than isolating single data points, the system measures the real-time collision between global capital flows and macroeconomic catalysts, replicating the rigorous data frameworks utilized at institutions like UBS and Goldman Sachs.</p>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>Institutional Context:</strong> In modern foreign exchange (FX) markets, surface-level price action often disguises profound structural weakness. By analyzing anomalous shifts in dark pool liquidity immediately preceding major central bank rate decisions, our models measure true institutional positioning rather than delayed retail sentiment.</p>
                                <p class="card-desc" style="font-size: 0.95rem;"><strong>Decision Matrix:</strong> This raw analytical depth transforms unstructured global data into a cohesive, probabilistic map—ensuring every subsequent portfolio decision is anchored by proven empirical evidence rather than subjective, reactionary intuition.</p>
                            </div>
"@

$c2_new = @"
                            <div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(197, 168, 97, 0.3);">
                                <h4 style="color: var(--color-gold); font-size: 0.85rem; letter-spacing: 1px; text-transform: uppercase; margin-bottom: 10px;">Methodology & Analytical Application</h4>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>How It Operates:</strong> This engine systematically deconstructs price volatility by subjecting historical FX paradigms and cross-asset correlations to advanced Monte Carlo simulations. The framework specifically analyzes how distinct asset classes interact under extreme stress, testing non-linear market models against decades of structural macroeconomic data.</p>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>Institutional Context:</strong> During sudden liquidity vacuums—such as unexpected geopolitical shocks or severe yield curve inversions—generic trend-following overlays invariably collapse. By mathematically isolating specific mean-reversion triggers and momentum exhaustion points, the model strips away market noise, identifying highly asymmetrical risk-to-reward opportunities within complex FX derivatives.</p>
                                <p class="card-desc" style="font-size: 0.95rem;"><strong>Decision Matrix:</strong> By enforcing absolute statistical rigor, our quantitative methodology prevents the deployment of capital based on unverified directional guessing, channeling resources exclusively toward scenarios demonstrating proven, high-probability institutional alpha.</p>
                            </div>
"@

$c3_new = @"
                            <div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(197, 168, 97, 0.3);">
                                <h4 style="color: var(--color-gold); font-size: 0.85rem; letter-spacing: 1px; text-transform: uppercase; margin-bottom: 10px;">Methodology & Analytical Application</h4>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>How It Operates:</strong> Risk is governed dynamically at the portfolio level by enforcing strict drawdown constraints and actively compressing Value-at-Risk (VaR) parameters. The system continuously measures shifting volatility profiles and asymmetric tail risks across all active strategies, mirroring the uncompromising capital preservation mandates maintained at Tier-1 banks like J.P. Morgan.</p>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>Institutional Context:</strong> Preserving capital requires acknowledging that market conditions can fracture instantly. If severe cross-rate dislocations occur, such as sudden sovereign currency unpeggings, the risk engine systematically curtails exposure. It mandates absolute adherence to Sharpe and Sortino ratio optimization over naked directional conviction.</p>
                                <p class="card-desc" style="font-size: 0.95rem;"><strong>Decision Matrix:</strong> This disciplined firewall guarantees that no single opportunity supersedes our commitment to structural survival. Every quantitative signal is vetoed or approved based solely on mathematical capital preservation logic, ensuring robust performance consistency across any market sequence.</p>
                            </div>
"@


$c4_new = @"
                            <div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid rgba(197, 168, 97, 0.3);">
                                <h4 style="color: var(--color-gold); font-size: 0.85rem; letter-spacing: 1px; text-transform: uppercase; margin-bottom: 10px;">Methodology & Analytical Application</h4>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>How It Operates:</strong> Our dual-mandate synthesis merges relentless algorithmic computation with discretionary macro-level evaluation. While the quantitative engines instantly process latency friction, probability matrices, and statistical variances, our human expertise actively contextualizes subjective market drivers such as sudden regulatory interventions or nuanced central bank rhetoric.</p>
                                <p class="card-desc" style="margin-bottom: 12px; font-size: 0.95rem;"><strong>Institutional Context:</strong> Complex foreign exchange markets often operate outside historical parameters. When unpredictable, non-quantifiable events immediately restructure global capital flows, rigid autonomous algorithms cannot rapidly adapt to the paradigm shift. Our 30 years of experience navigating institutional trading desks allows us to manually modulate systematic exposure in real-time when models encounter unprecedented structural breakdown.</p>
                                <p class="card-desc" style="font-size: 0.95rem;"><strong>Decision Matrix:</strong> This intelligent integration bridges the chasm between mathematical theory and actual market execution. It creates an adaptive architecture that respects absolute quantitative objectivity while remaining fluid enough to manage global uncertainty with professional discretionary precision.</p>
                            </div>
"@

$regex1 = '(?s)<p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba\(11, 22, 44, 0.1\);"><strong>Institutional Integration:</strong> Drawing on high-fidelity data structures.*?institutional-grade analytical pipeline.</p>'
$html = [regex]::Replace($html, $regex1, $c1_new)

$regex2 = '(?s)<p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba\(11, 22, 44, 0.1\);"><strong>Institutional Integration:</strong> This systematic evaluation engine acts.*?proven institutional methodology.</p>'
$html = [regex]::Replace($html, $regex2, $c2_new)

$regex3 = '(?s)<p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba\(11, 22, 44, 0.1\);"><strong>Institutional Integration:</strong> Capital preservation remains the uncompromising.*?structural portfolio damage.</p>'
$html = [regex]::Replace($html, $regex3, $c3_new)

$regex4 = '(?s)<p class="card-desc" style="margin-top: 15px; padding-top: 15px; border-top: 1px solid rgba\(11, 22, 44, 0.1\);"><strong>Institutional Integration:</strong> Algorithmic capability must be tempered.*?interpret autonomously.</p>'
$html = [regex]::Replace($html, $regex4, $c4_new)

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $html, $utf8NoBom)
Write-Host "Success"
