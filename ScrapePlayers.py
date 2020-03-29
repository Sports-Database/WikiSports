import csv
import string
from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
from time import sleep
from random import randint


# list that contains all the players
players = []
positions = []
letters = list(string.ascii_uppercase)

# scrape players starting with every letter
for letter in letters:
    URL = "https://www.footballdb.com/xfl/players.html?letter=" + letter
    req = Request(URL, headers={'User-Agent': 'Mozilla/5.0'})
    # make the request rate lower so we don't flood the server
    sleep(randint(1, 5))
    page = urlopen(req).read()

    soup = BeautifulSoup(page, 'html.parser')

    # find the player table
    playerTb = soup.find('table', class_='statistics scrollable')
    # for each row of player data
    for row in playerTb.find_all('tr'):
        name = ''.join([r.text for r in row.find_all('td')[:1]]).strip('')
        position = ''.join([r.text for r in row.find_all('td')[1:2]]).strip('')
        players.append(name)
        positions.append(position)


# filter the blank strings
players = list(filter(None, players))
positions = list(filter(None, positions))
with open('output.csv', 'w', newline='') as csv_file:
    writer = csv.writer(csv_file)
    writer.writerow(['id', 'name', 'position'])
    for playerId, player in enumerate(players):
        writer.writerow([playerId, player, positions[playerId]])
