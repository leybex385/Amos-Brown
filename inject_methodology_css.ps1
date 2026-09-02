$css = @"

/* ==========================================================================
   Methodology Editorial Layout
   ========================================================================== */
.methodology-editorial-container {
    display: flex;
    flex-direction: column;
    gap: 80px; 
    margin-top: 80px;
}

.methodology-block {
    display: grid;
    grid-template-columns: 2.5fr 7.5fr;
    gap: 60px;
    border-top: 1px solid rgba(197, 168, 97, 0.2);
    padding-top: 50px;
}

.methodology-left-rail {
    position: relative;
    border-right: 1px solid rgba(197, 168, 97, 0.1);
    padding-right: 40px;
}

.methodology-numeral {
    font-size: 5.5rem;
    font-weight: 200;
    line-height: 1;
    color: rgba(197, 168, 97, 0.15);
    margin-bottom: 20px;
    font-family: var(--font-primary);
    letter-spacing: -2px;
}

.methodology-title {
    font-size: 1.8rem;
    color: var(--color-white);
    font-weight: 300;
    line-height: 1.3;
}

.methodology-right-content {
    display: flex;
    flex-direction: column;
    gap: 40px;
}

.methodology-insight-group {
    display: grid;
    grid-template-columns: 200px 1fr;
    gap: 30px;
    align-items: baseline;
}

.insight-label {
    font-size: 0.8rem;
    color: var(--color-gold);
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 600;
    border-left: 2px solid var(--color-gold);
    padding-left: 15px;
}

.insight-text {
    font-size: 1.05rem;
    color: var(--color-gray-soft);
    line-height: 1.8;
    margin: 0;
}

@media (max-width: 900px) {
    .methodology-block {
        grid-template-columns: 1fr;
        gap: 30px;
    }
    .methodology-insight-group {
        grid-template-columns: 1fr;
        gap: 15px;
    }
    .methodology-left-rail {
        border-right: none;
        padding-right: 0;
        border-bottom: 1px solid rgba(197, 168, 97, 0.1);
        padding-bottom: 25px;
    }
    .methodology-numeral {
        font-size: 4rem;
    }
}
"@
Add-Content -Path "c:\Users\USER\OneDrive\Desktop\Quantitative Research\styles.css" -Value "`n$css"
Write-Host "Success"
