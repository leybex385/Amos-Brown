$html = [System.IO.File]::ReadAllText("c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html")

$startString = "<p class=`"research-intro`">We employ rigorous quantitative methods"
$endString = "<div class=`"process-section`">"

$startIndex = $html.IndexOf($startString)
$endIndex = $html.IndexOf($endString)

$newHTML = @"
<p class="research-intro" style="margin-bottom: 1rem;">The purpose of establishing my team was to create a more systematic, scientific, and structured approach to financial market research.</p>
                    <p class="research-intro" style="margin-bottom: 1rem;">Historically, many investment decisions relied heavily on individual experience, market opinions, or emotional reactions. However, as global financial markets have become increasingly complex and the volume of available information has grown exponentially, traditional methods alone are no longer sufficient to fully evaluate market conditions.</p>
                    <p class="research-intro" style="margin-bottom: 1rem;">To address this challenge, I personally designed and developed our research framework, integrating financial market expertise, quantitative analysis methods, data processing capabilities, and risk management principles into one comprehensive system.</p>
                    <p class="research-intro" style="margin-bottom: 3rem;">Our research framework consists of several key components:</p>
                </div>

                <div class="research-grid-new">
                    <!-- Card 1: Market Data Collection & Research System -->
                    <a href="market-data-collection.html" class="research-card-new">
                        <div class="card-image-box">
                            <span class="card-tag">DATA FOUNDATION</span>
                            <img src="arch_market_data_1788263501613.png" alt="Market Data Collection & Research System">
                        </div>
                        <div class="card-content-new">
                            <h3>Market Data Collection & Research System</h3>
                            
                            <p class="card-desc" style="margin-bottom: 15px;">Our team continuously evaluates multiple dimensions of market information, including:</p>
                            <ul class="card-points" style="margin-bottom: 20px;">
                                <li style="margin-bottom: 8px;">Real-time price movements;</li>
                                <li style="margin-bottom: 8px;">Historical market structures;</li>
                                <li style="margin-bottom: 8px;">Market volatility conditions;</li>
                                <li style="margin-bottom: 8px;">Trading volume and liquidity changes;</li>
                                <li style="margin-bottom: 8px;">Capital flow patterns;</li>
                                <li style="margin-bottom: 8px;">Macroeconomic indicators;</li>
                                <li>Market sentiment factors.</li>
                            </ul>
                            <p class="card-desc">Rather than focusing only on whether prices are moving higher or lower, our objective is to understand the underlying market dynamics and the factors influencing price movements.</p>

                            <div class="card-cta" style="margin-top: 15px;">View Full Details &rarr;</div>
                        </div>
                    </a>

                    <!-- Card 2: Quantitative Analysis & Model Evaluation Framework -->
                    <a href="quantitative-analysis.html" class="research-card-new">
                        <div class="card-image-box">
                            <span class="card-tag">ANALYTICAL ENGINE</span>
                            <img src="arch_quant_analysis_1788263531265.png" alt="Quantitative Analysis & Model Evaluation Framework">
                        </div>
                        <div class="card-content-new">
                            <h3>Quantitative Analysis & Model Evaluation Framework</h3>
                            
                            <p class="card-desc" style="margin-bottom: 15px;">After collecting market data, our team applies quantitative research methods to conduct deeper analysis, including:</p>
                            <ul class="card-points" style="margin-bottom: 20px;">
                                <li style="margin-bottom: 8px;">Historical pattern analysis;</li>
                                <li style="margin-bottom: 8px;">Market trend identification;</li>
                                <li style="margin-bottom: 8px;">Volatility evaluation;</li>
                                <li style="margin-bottom: 8px;">Probability assessment;</li>
                                <li>Opportunity filtering.</li>
                            </ul>
                            <p class="card-desc">The purpose of this process is not to predict every future market movement with certainty. Instead, it is designed to evaluate market conditions systematically and identify opportunities with stronger probability characteristics.</p>

                            <div class="card-cta" style="margin-top: 15px;">View Full Details &rarr;</div>
                        </div>
                    </a>

                    <!-- Card 3: Risk Management System -->
                    <a href="risk-evaluation.html" class="research-card-new">
                        <div class="card-image-box">
                            <span class="card-tag">RISK MANAGEMENT</span>
                            <img src="arch_risk_eval_1788263624659.png" alt="Risk Management System">
                        </div>
                        <div class="card-content-new">
                            <h3>Risk Management System</h3>
                            
                            <p class="card-desc" style="margin-bottom: 15px;">After more than 30 years in financial markets, I believe the most important ability in investing is not simply finding opportunities it is managing risk.</p>
                            <p class="card-desc" style="margin-bottom: 15px;">Our team has established an independent risk assessment process that evaluates:</p>
                            <ul class="card-points" style="margin-bottom: 20px;">
                                <li style="margin-bottom: 8px;">Overall market conditions;</li>
                                <li style="margin-bottom: 8px;">Volatility levels;</li>
                                <li style="margin-bottom: 8px;">Potential risk factors;</li>
                                <li style="margin-bottom: 8px;">Capital management considerations;</li>
                                <li>Risk-to-reward relationships.</li>
                            </ul>
                            <p class="card-desc">Every research outcome must go through risk evaluation before being considered for further action. Opportunities are only meaningful when they are evaluated within a disciplined risk framework.</p>

                            <div class="card-cta" style="margin-top: 15px;">View Full Details &rarr;</div>
                        </div>
                    </a>

                    <!-- Card 4: Combining Technology With Human Expertise -->
                    <a href="portfolio-asset-allocation.html" class="research-card-new">
                        <div class="card-image-box">
                            <span class="card-tag">PORTFOLIO STRATEGY</span>
                            <img src="arch_portfolio_1788263650329.png" alt="Combining Technology With Human Expertise">
                        </div>
                        <div class="card-content-new">
                            <h3>Combining Technology With Human Expertise</h3>
                            
                            <p class="card-desc" style="margin-bottom: 15px;">I have always believed that technology can significantly improve analytical efficiency, but it cannot completely replace professional experience and judgment.</p>
                            <p class="card-desc" style="margin-bottom: 15px;">Therefore, our approach is not based solely on models. Instead, we combine:</p>
                            <ul class="card-points" style="margin-bottom: 20px;">
                                <li style="margin-bottom: 8px;">Quantitative data analysis;</li>
                                <li style="margin-bottom: 8px;">Research-driven methodologies;</li>
                                <li style="margin-bottom: 8px;">Financial market experience;</li>
                                <li>Professional risk management principles.</li>
                            </ul>
                            <p class="card-desc">By integrating these elements, our goal is to create a more objective, structured, and disciplined approach to financial market analysis.</p>

                            <div class="card-cta" style="margin-top: 15px;">View Full Details &rarr;</div>
                        </div>
                    </a>
                </div>
                
                <div class="process-section">
"@

if ($startIndex -ge 0 -and $endIndex -ge 0) {
    $prefix = $html.Substring(0, $startIndex)
    $suffix = $html.Substring($endIndex + $endString.Length)
    $finalHtml = $prefix + $newHTML + $suffix
    
    $utf8NoBom = New-Object System.Text.UTF8Encoding $False
    [System.IO.File]::WriteAllText("c:\Users\USER\OneDrive\Desktop\Quantitative Research\index.html", $finalHtml, $utf8NoBom)
    Write-Host "Success"
}
else {
    Write-Host "Start ($startIndex) or End ($endIndex) tag not found"
}
