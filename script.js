document.addEventListener('DOMContentLoaded', () => {
    // Mobile Navigation Toggle
    const menuToggle = document.getElementById('menu-toggle');
    const mainNav = document.getElementById('main-nav');

    if (menuToggle && mainNav) {
        menuToggle.addEventListener('click', () => {
            menuToggle.classList.toggle('active');
            mainNav.classList.toggle('active');
            document.body.classList.toggle('no-scroll');
        });
    }

    // Close mobile menu when a link is clicked
    const navLinks = document.querySelectorAll('.nav-link');
    navLinks.forEach(link => {
        link.addEventListener('click', () => {
            if (mainNav.classList.contains('active')) {
                menuToggle.classList.remove('active');
                mainNav.classList.remove('active');
                document.body.classList.remove('no-scroll');
            }
        });
    });

    // Smooth Scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href');
            if (targetId === '#') return;

            const targetElement = document.querySelector(targetId);
            if (targetElement) {
                // Adjust for fixed header height
                const headerHeight = document.getElementById('main-header').offsetHeight;
                const targetPosition = targetElement.getBoundingClientRect().top + window.scrollY - headerHeight;

                window.scrollTo({
                    top: targetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });



    // Modal Interaction Logic
    const researchModal = document.getElementById('research-modal');
    if (researchModal) {
        const modalClose = researchModal.querySelector('.modal-close');
        const modalTitle = document.getElementById('modal-title');
        const modalBody = document.getElementById('modal-body');
        const researchTags = document.querySelectorAll('.research-tag');

        const modalContentMap = {
            'market-data': {
                title: 'Market Data',
                content: '<p>Our Market Data infrastructure is fundamental to our quantitative processes. We aggregate, sanitize, and normalize tick-level data from over 50 global exchanges, covering equities, derivatives, fixed income, and FX.</p><p>Ensuring data integrity allows our models to operate with precision, free from the statistical noise that typically degrades predictive validity.</p>'
            },
            'market-structure': {
                title: 'Market Structure',
                content: '<p>We analyze the underlying mechanics of trading venues around the world. Understanding order routing, liquidity fragmentation, and exchange protocols allows us to build execution algorithms that minimize latency and slippage.</p><p>By deconstructing market microstructure, we secure a critical edge in both capacity and transaction costs.</p>'
            },
            'quantitative-analysis': {
                title: 'Quantitative Analysis',
                content: '<p>Our core analytical engine employs advanced statistical modeling, machine learning frameworks, and econometric techniques to isolate non-random price anomalies across disconnected asset classes.</p><p>We rely exclusively on empirical testing rather than heuristic assumptions, building strategies built on rigid mathematical foundations.</p>'
            },
            'volatility': {
                title: 'Volatility',
                content: '<p>Volatility is treated not just as a risk parameter but as a tradable asset class. We model implied volatility surfaces and variance premiums to identify periods of structural mispricing in derivative markets.</p><p>Our models forecast regime shifts, enabling portfolios to dynamically adjust their exposure to systemic distress.</p>'
            },
            'probability': {
                title: 'Probability',
                content: '<p>Every decision is grounded in Bayesian probability assessment. We generate vast swaths of synthetic market sequences via Monte Carlo simulations to pressure-test the resilience of our signals under catastrophic outlier scenarios.</p><p>We build our portfolios expecting chaos, ensuring mathematically sound responses to unpredictable events.</p>'
            },
            'macroeconomic-indicators': {
                title: 'Macroeconomic Indicators',
                content: '<p>While rooted in quantitative execution, we systematically ingest broad macroeconomic metrics—interest rate dynamics, central bank liquidity flows, and GDP velocity indicators.</p><p>These inputs serve as essential context nodes, modulating the aggression or defensiveness of our high-frequency allocation arrays.</p>'
            },
            'market-sentiment': {
                title: 'Market Sentiment',
                content: '<p>We utilize natural language processing (NLP) to parse millions of unstructured data points daily, including central bank minutes, regulatory filings, and global news feeds.</p><p>By quantifying abstract sentiment into structured datasets, we gain insight into the emotional elasticity and positioning of the broader institutional market.</p>'
            },
            'capital-flows': {
                title: 'Capital Flows',
                content: '<p>Tracking the migration of liquidity is essential for predicting structural trend exhaustion. We monitor inter-market capital flow rotations, dark pool volumes, and institutional block trades.</p><p>This continuous monitoring allows us to detect stealth accumulation and distribution phases before they reflect in traditional price action.</p>'
            }
        };

        const openModal = (topicId) => {
            const data = modalContentMap[topicId];
            if (data) {
                modalTitle.textContent = data.title;
                modalBody.innerHTML = data.content;
                researchModal.classList.add('active');
                document.body.classList.add('no-scroll');
            }
        };

        const closeModal = () => {
            researchModal.classList.remove('active');
            document.body.classList.remove('no-scroll');
        };

        // Click on tag
        researchTags.forEach(tag => {
            tag.addEventListener('click', () => {
                const topic = tag.getAttribute('data-topic');
                openModal(topic);
            });
        });

        // Close on X click
        modalClose.addEventListener('click', closeModal);

        // Close on background click
        researchModal.addEventListener('click', (e) => {
            if (e.target === researchModal) {
                closeModal();
            }
        });

        // Close on Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && researchModal.classList.contains('active')) {
                closeModal();
            }
        });
    }

    // Dynamically apply reveal classes to elements if they don't have them
    const revealSelectors = [
        '.section-title', '.main-title', '.hero-text', '.subtitle', '.hero-buttons',
        '.about-person-title', '.about-person-subtitle', '.about-person-desc',
        '.massive-headline', '.framework-intro', '.central-title', '.central-desc',
        '.luxury-philosophy-quote blockquote', '.quote-signature',
        '.research-eyebrow', '.research-intro',
        '.subpage-title', '.intro-lead', '.subpage-editorial p', '.subpage-editorial h2'
    ];

    document.querySelectorAll(revealSelectors.join(', ')).forEach(el => {
        if (!el.classList.contains('reveal-up')) {
            el.classList.add('reveal-up');
        }
    });

    // Apply staggered delays to groups
    const staggerGroups = [
        '.research-grid-new .research-card-new',
        '.luxury-central-list .central-item',
        '.tags-container .research-tag',
        '.contact-editorial-info .contact-item',
        '.process-timeline-new .step-item-new',
        '.risk-flow .flow-item',
        '.subpage-editorial ul li'
    ];

    staggerGroups.forEach(groupSelector => {
        const elements = document.querySelectorAll(groupSelector);
        elements.forEach((el, index) => {
            el.classList.add('reveal-up');
            // Stagger up to 600ms (100ms per index)
            const delay = Math.min((index + 1) * 100, 600);
            el.classList.add(`delay-${delay}`);
        });
    });

    // Scroll Reveal Intersection Observer
    const revealElements = document.querySelectorAll('.reveal-up');

    if (revealElements.length > 0) {
        const revealObserver = new IntersectionObserver((entries, observer) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('active');
                    observer.unobserve(entry.target);
                }
            });
        }, {
            root: null,
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        });

        revealElements.forEach(el => revealObserver.observe(el));
    }
});
