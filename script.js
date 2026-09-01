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
                content: '<p>Our team continuously evaluates multiple dimensions of market information, focusing heavily on real-time price movements.</p><p>Rather than focusing only on whether prices are moving higher or lower, our objective is to actively understand the underlying market dynamics and the fundamental factors influencing these price movements.</p>'
            },
            'market-structure': {
                title: 'Market Structure',
                content: '<p>A critical component of our continuous evaluation of market information is the analysis of historical market structures.</p><p>By studying structural market data, we aim to systematically understand the broader underlying dynamics that influence global price movements and market conditions.</p>'
            },
            'liquidity-trading-volume': {
                title: 'Liquidity & Trading Volume',
                content: '<p>As part of our data collection and research system, we continuously evaluate trading volume and liquidity changes.</p><p>This allows us to move beyond simple directional price tracking and focus on understanding the underlying market dynamics that truly influence structural price movements.</p>'
            },
            'volatility': {
                title: 'Volatility',
                content: '<p>Our research framework systematically tracks market volatility conditions alongside deeper volatility evaluation parameters.</p><p>This allows us to systematically evaluate market conditions and construct a more objective, structured, and disciplined approach to understanding financial markets.</p>'
            },
            'probability': {
                title: 'Probability',
                content: '<p>After collecting market data, our team applies quantitative research methods to conduct deeper analysis through rigorous probability assessment.</p><p>The purpose of this process is not to predict every future market movement with certainty. Instead, it is designed to evaluate market conditions systematically and identify opportunities with stronger probability characteristics.</p>'
            },
            'macroeconomic-indicators': {
                title: 'Macroeconomic Indicators',
                content: '<p>Our continuous evaluation of multiple dimensions of market information includes the systematic tracking of global macroeconomic indicators.</p><p>By integrating these indicators with our data processing capabilities, we strive to understand the underlying market dynamics influencing price movements.</p>'
            },
            'market-sentiment': {
                title: 'Market Sentiment',
                content: '<p>As a core component of our data evaluation process, our team continuously tracks market sentiment factors.</p><p>Evaluating sentiment alongside traditional metrics helps us achieve our goal of understanding true underlying market dynamics, rather than focusing solely on whether prices are moving higher or lower.</p>'
            },
            'capital-flows': {
                title: 'Capital Flows',
                content: '<p>To properly evaluate multidimensional market information, our research system actively monitors capital flow patterns.</p><p>Incorporating capital flows into our research framework allows us to systematically evaluate market conditions and identify key opportunities within a disciplined risk framework.</p>'
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
        '.about-person-title', '.about-person-subtitle', '.about-person-desc', '.about-subheading',
        '.massive-headline', '.framework-intro', '.central-title', '.central-desc',
        '.luxury-philosophy-quote blockquote', '.quote-signature', '.tech-points-list li',
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
