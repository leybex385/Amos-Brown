$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$replacement = @"

/* ==========================================================================
   2B. ABOUT EXTENDED DETAILS
   ========================================================================== */
.about-details-section {
    position: relative;
    background: var(--color-navy) url('quant_blueprint.png') no-repeat center center;
    background-size: cover;
    background-blend-mode: soft-light;
    padding: 120px 0;
    overflow: hidden;
    text-align: center;
}

.about-details-section .container {
    position: relative;
    z-index: 2;
}

.luxury-framework-header {
    max-width: 900px;
    margin: 0 auto 60px;
}

.gold-subtitle {
    color: var(--color-gold);
    font-size: 0.95rem;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-bottom: 25px;
}

.massive-headline {
    color: var(--color-white);
    font-size: 2.8rem;
    font-weight: 300;
    line-height: 1.25;
    margin-bottom: 40px;
}

.framework-intro {
    color: var(--color-gray-soft);
    font-size: 1.1rem;
    line-height: 1.8;
}

.luxury-central-list {
    max-width: 900px;
    margin: 0 auto;
}

.central-item {
    padding: 50px 0;
    border-bottom: 1px solid rgba(197, 168, 97, 0.2);
}

.central-item.border-bottom-none {
    border-bottom: none;
}

.central-title {
    color: var(--color-white);
    font-size: 1.8rem;
    font-weight: 400;
    margin-bottom: 20px;
}

.central-desc {
    color: var(--color-gray-soft);
    font-size: 1.05rem;
    line-height: 1.8;
}

.luxury-philosophy-quote {
    max-width: 900px;
    margin: 60px auto 0;
    padding-top: 60px;
    border-top: 1px solid rgba(197, 168, 97, 0.2);
}

.luxury-philosophy-quote blockquote {
    color: var(--color-white);
    font-size: 1.4rem;
    font-style: italic;
    line-height: 1.6;
    margin-bottom: 30px;
}

.quote-signature strong {
    display: block;
    color: var(--color-gold);
    font-weight: 600;
    margin-bottom: 5px;
}

.quote-signature span {
    color: var(--color-gray-medium);
    font-size: 0.95rem;
}
"@

# Note: In step 461, I actually modified .about-details-section previously to have a white background, which got stranded in styles.css.
# Let's clean it up before appending the new block to the end of styles.css.
$regexFindOld = '(?s)\/\* =+ \r?\n\s*Secondary Extended About \/ Framework Philosophy \r?\n\s*=+\s*\*\/.*?\.luxury-framework-header\s*\{.*?margin-bottom:\s*50px;\s*\}'
$css = [regex]::Replace($css, $regexFindOld, "")

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, "$css`n$replacement", $utf8NoBom)
Write-Host "Success"
