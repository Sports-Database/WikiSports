import csv
import string
from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
from time import sleep
from random import randint


# list that contains all the players
players = []
letters = list(string.ascii_uppercase)

# scrape players starting with every letter
for letter in letters:
    URL = "https://www.footballdb.com/xfl/players.html?letter=" + letter
    req = Request(URL, headers={'User-Agent': 'Mozilla/5.0'})
    # make the request rate lower so we don't flood the server
    sleep(randint(8, 15))
    page = urlopen(req).read()

    soup = BeautifulSoup(page, 'html.parser')

    # find the player table
    playerTb = soup.find('table', class_='statistics scrollable')
    # for each row of player data
    for row in playerTb.find_all('tr'):
        name = [r.text for r in row.find_all('td')[:1]]
        players.append(name)


# filter the blank strings
players = list(filter(None, players))
with open('output.csv', 'w') as csv_file:
    writer = csv.writer(csv_file)
    for p in players:
        writer.writerow(p)
