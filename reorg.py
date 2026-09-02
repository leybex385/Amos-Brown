import re

with open('c:\\Users\\USER\\OneDrive\\Desktop\\Quantitative Research\\index.html', 'r', encoding='utf-8') as f:
    text = f.read()

# The grid starts at <div class="research-grid-new"> and ends before <div class="process-section">
start_grid = text.find('<div class="research-grid-new">')
end_grid = text.find('<div class="process-section">')

grid_content = text[start_grid:end_grid]

# extract each card
cards = re.findall(r'(<!-- Area \d+ -->.*?</a>)', grid_content, re.DOTALL)

new_structure = """
                <div class="research-groups">
                    <h3 class="massive-headline" style="font-size: 2rem; margin-bottom: 2rem; margin-top: 2rem;">Market Data Collection &amp; Research System</h3>
                    <div class="research-grid-new">
                        {card1}
                        {card3}
                    </div>

                    <h3 class="massive-headline" style="font-size: 2rem; margin-bottom: 2rem; margin-top: 2rem;">Quantitative Analysis &amp; Model Evaluation Framework</h3>
                    <div class="research-grid-new">
                        {card2}
                        {card4}
                    </div>

                    <h3 class="massive-headline" style="font-size: 2rem; margin-bottom: 2rem; margin-top: 2rem;">Risk Management System</h3>
                    <div class="research-grid-new">
                        {card5}
                    </div>

                    <h3 class="massive-headline" style="font-size: 2rem; margin-bottom: 2rem; margin-top: 2rem;">Combining Technology With Human Expertise</h3>
                    <div class="research-grid-new" style="margin-bottom: 4rem;">
                        {card6}
                    </div>
                </div>
"""

card1, card2, card3, card4, card5, card6 = "", "", "", "", "", ""

for card in cards:
    if '<!-- Area 1 -->' in card: card1 = card
    elif '<!-- Area 2 -->' in card: card2 = card
    elif '<!-- Area 3 -->' in card: card3 = card
    elif '<!-- Area 4 -->' in card: card4 = card
    elif '<!-- Area 5 -->' in card: card5 = card
    elif '<!-- Area 6 -->' in card: card6 = card

new_structure_formatted = new_structure.format(card1=card1, card2=card2, card3=card3, card4=card4, card5=card5, card6=card6)

new_text = text[:start_grid] + new_structure_formatted + text[end_grid:]

with open('c:\\Users\\USER\\OneDrive\\Desktop\\Quantitative Research\\index.html', 'w', encoding='utf-8') as f:
    f.write(new_text)

print("Success")
