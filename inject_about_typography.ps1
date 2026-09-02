$path = "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css"
$css = [System.IO.File]::ReadAllText($path)

$replacement = @"
    -webkit-mask-composite: source-in;
    mask-image: linear-gradient(to right, transparent 0%, black 15%, black 100%), linear-gradient(to bottom, black 65%, transparent 100%);
    mask-composite: intersect;
}

/* Restored About Typography */
.about-container-custom {
    position: relative;
    z-index: 2;
    max-width: 1400px;
    margin: 0 auto;
}

.about-text-content {
    width: 47%;
    max-width: 650px;
}

.about-eyebrow-container {
    display: flex;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
}

.eyebrow-text {
    font-size: 0.85rem;
    color: var(--color-gold);
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 2px;
}

.eyebrow-line {
    display: block;
    width: 40px;
    height: 1px;
    background-color: var(--color-gold);
}

.about-eyebrow-container.gold-divider {
    margin-top: 40px;
    margin-bottom: 40px;
}

.about-eyebrow-container.gold-divider .eyebrow-line {
    width: 60px;
}

.about-person-title {
    font-size: 4rem;
    color: var(--color-navy);
    font-weight: 400;
    margin-bottom: 25px;
    line-height: 1.1;
    letter-spacing: -1px;
}

.about-person-subtitle {
    font-size: 1rem;
    color: var(--color-gold);
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1.5px;
    line-height: 1.6;
}

.about-person-desc {
    font-size: 1.05rem;
    color: var(--color-charcoal);
    line-height: 1.8;
    margin-bottom: 20px;
}
"@

$css = $css -replace '(?s)    -webkit-mask-composite: source-in;.*?mask-composite: intersect;\s*\}', $replacement

$utf8NoBom = New-Object System.Text.UTF8Encoding $False
[System.IO.File]::WriteAllText($path, $css, $utf8NoBom)
Write-Host "Success"
