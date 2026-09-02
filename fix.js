const fs = require('fs');
let html = fs.readFileSync('index.html', 'utf8');

const startTag = '<!-- Group 1: Market Data Collection & Research System -->';
const endTag = '<div class="process-section">';
const startIndex = html.indexOf(startTag);
const endIndex = html.indexOf(endTag);

const newHTML = `
                <div class="research-grid-new">
                    <!-- Card 1: Market Data Collection & Research System -->
                    <a href="market-data-collection.html" class="research-card-new">
                        <div class="card-image-box">
                            <span class="card-tag">DATA FOUNDATION</span>
                            <img src="arch_market_data_1788263501613.png" alt="Market Data Collection & Research System">
                        </div>
                        <div class="card-content-new">
                            <h3>Market Data Collection & Research System</h3>
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Market Data Collection</p>
                            <p class="card-desc">Continuous evaluation of multiple dimensions of market information to
                                understand underlying dynamics.</p>
                            <ul class="card-points" style="margin-bottom: 15px;">
                                <li>Real-time price movements</li>
                                <li>Capital flow patterns</li>
                                <li>Macroeconomic indicators</li>
                                <li>Market sentiment factors</li>
                            </ul>
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Market Structure Research</p>
                            <p class="card-desc">Evaluating the foundational dynamics and underlying factors that
                                influence structural price movements and conditions.</p>
                            <ul class="card-points">
                                <li>Historical market structures</li>
                                <li>Trading volume changes</li>
                                <li>Liquidity evaluation</li>
                                <li>Market mechanics analysis</li>
                            </ul>
                            <div class="card-cta">View Full Details &rarr;</div>
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
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Quantitative Analysis</p>
                            <p class="card-desc">Applying quantitative research methods to systematically identify
                                opportunities with stronger probability characteristics.</p>
                            <ul class="card-points" style="margin-bottom: 15px;">
                                <li>Systematic market evaluation</li>
                                <li>Historical pattern analysis</li>
                                <li>Market trend identification</li>
                                <li>Opportunity filtering</li>
                            </ul>
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Probability Assessment</p>
                            <p class="card-desc">Evaluating market conditions systematically rather than attempting to
                                definitively predict every future movement.</p>
                            <ul class="card-points">
                                <li>Volatility evaluation</li>
                                <li>Opportunity filtering</li>
                                <li>Outcome assessment</li>
                                <li>Systematic evaluation</li>
                            </ul>
                            <div class="card-cta">View Full Details &rarr;</div>
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
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Risk Evaluation</p>
                            <p class="card-desc">An independent risk assessment process ensuring every research outcome
                                goes through a disciplined risk framework.</p>
                            <ul class="card-points">
                                <li>Volatility levels</li>
                                <li>Potential risk factors</li>
                                <li>Capital management considerations</li>
                                <li>Risk-to-reward relationships</li>
                            </ul>
                            <div class="card-cta">View Full Details &rarr;</div>
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
                            
                            <p class="card-desc" style="font-weight: 600; color: #0B162C; margin-bottom: 5px;">Portfolio & Asset Allocation</p>
                            <p class="card-desc">Integrating quantitative data analysis with professional human
                                expertise to structure actionable strategies.</p>
                            <ul class="card-points">
                                <li>Quantitative data analysis</li>
                                <li>Research-driven methodologies</li>
                                <li>Financial market experience</li>
                                <li>Professional risk principles</li>
                            </ul>
                            <div class="card-cta">View Full Details &rarr;</div>
                        </div>
                    </a>
                </div>
`;
fs.writeFileSync('index.html', html.substring(0, startIndex) + newHTML + html.substring(endIndex));
console.log('done');
