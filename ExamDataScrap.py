import requests
from bs4 import BeautifulSoup
import csv

# URL to scrape
url = "http://localhost/ExamSite/3.html"

# Send a GET request to the URL
response = requests.get(url)

# Check if the request was successful
if response.status_code == 200:
    html_content = response.content
else:
    raise Exception("Failed to retrieve the webpage.")

# Create a BeautifulSoup object
soup = BeautifulSoup(response.content, "html.parser")

# Find all elements with class "card exam-question-card"
question_cards = soup.find_all(class_="card exam-question-card")

# Initialize the CSV data
csv_data = [["Sr. No", "Question Body text", "Choice 1", "Choice 2", "Correct Choice"]]

# Iterate over each question card
for i, card in enumerate(question_cards, start=1):
    question_body = card.find(class_="card-body question-body").decode_contents(formatter="html")
    # question_body = card.find(class_="card-body question-body").get_text(strip=True)


    paragraphs = question_body.find(class_="card-text")


    for p in paragraphs:
    formatted_text = ""
    for content in p.contents:
        if content.name == 'b':
            formatted_text += f"**{content.get_text()}**"  # Bold
        elif content.name == 'i':
            formatted_text += f"*{content.get_text()}*"  # Italic
        else:
            formatted_text += content if isinstance(content, str) else content.get_text()
    print(formatted_text)


    
    # Extract the custom attribute data-id
    data_id = question_body.get("data-id")
    
    question_body2 = card.find(class_="card-body question-body").get_text(strip=True)
    # Extract the list of answers
    answers = [li.get_text(strip=True) for li in card.find("ul").find_all("li")]
    
    # Check if any answer has the "correct-choice" class
    correct_choice = any(li.has_attr("class") and "correct-choice" in li["class"] for li in card.find("ul").find_all("li"))
    
    # Append the data to the CSV data
    csv_data.append([i, question_body, *answers, "Yes" if correct_choice else "No"])

# Save the CSV data to a file
with open("exam_data.csv", "w", newline="") as file:
    writer = csv.writer(file)
    writer.writerows(csv_data)