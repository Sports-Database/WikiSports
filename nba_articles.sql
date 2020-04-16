CREATE TABLE IF NOT EXISTS articles(
	teamId int,
	name varchar(100),
	url varchar(500),
	foreign key (teamId) references teams(id)
);


INSERT INTO nba.articles (teamId, name, url) VALUES (15, '2019 Redraft ', 'www.nbcsports.com/boston/celtics/if-celtics-had-re-do-2019-nba-draft-it-would-look');
INSERT INTO nba.articles (teamId, name, url) VALUES (15, '3 Drafted who were better elsewhere ', 'hardwoodhoudini.com/2020/04/15/boston-celtics-drafted-players-elsewhere/');
INSERT INTO nba.articles (teamId, name, url) VALUES (17, 'Norman Powell in quarantine ', 'www.tsn.ca/toronto-raptors-norman-powell-making-most-of-his-time-at-home-1.1466737');
INSERT INTO nba.articles (teamId, name, url) VALUES (17, 'Best PGs in Toronto history ', 'clutchpoints.com/best-point-guards-in-toronto-raptors-history-ranked/');
INSERT INTO nba.articles (teamId, name, url) VALUES (26, 'Drummond + Cavs offseason ', 'www.cleveland.com/cavs/2020/04/how-andre-drummond-controls-cleveland-cavaliers-offseason.html');
INSERT INTO nba.articles (teamId, name, url) VALUES (26, 'Kevin Love trade rumors ', 'bleacherreport.com/articles/2886906-kevin-love-trade-rumors-cavs-value-for-veteran-pf-revealed');
INSERT INTO nba.articles (teamId, name, url) VALUES (16, 'Michael Jordan disapproves of Bulls documentary ', 'www.foxnews.com/sports/michael-jordan-chicago-bulls-documentary-horrible');
INSERT INTO nba.articles (teamId, name, url) VALUES (16, 'Pippen fired from advisory role ', 'nypost.com/2020/04/15/scottie-pippen-reveals-bulls-fired-him-from-his-adviser-role/');
INSERT INTO nba.articles (teamId, name, url) VALUES (19, 'Bucks Draft Prospects ', 'www.brewhoop.com/2020/4/13/21218508/milwaukee-bucks-2020-nba-draft-prospects-saddiq-bey-scouting-report');
INSERT INTO nba.articles (teamId, name, url) VALUES (19, 'Khris Middleton vs franchise greats ', 'behindthebuckpass.com/2020/04/15/milwaukee-bucks-comparing-khris-middleton-franchise-greats/');
INSERT INTO nba.articles (teamId, name, url) VALUES (18, 'Best heat time to never win title ', 'www.hothothoops.com/2020/4/15/21221954/the-best-miami-heat-team-to-never-win-a-title-snbation-titleless-mourning-hardaway');
INSERT INTO nba.articles (teamId, name, url) VALUES (18, 'Kendrick Nunn ROTY over Ja Morant ', 'bleacherreport.com/articles/2886380-heats-kendrick-nunn-says-he-deserves-nba-rookie-of-the-year-over-ja-morant');
INSERT INTO nba.articles (teamId, name, url) VALUES (21, 'Sixers yearly awards ', 'www.nbcsports.com/philadelphia/76ers/nba-season-awards-sixers-joel-embiid-ben-simmons-furkan-korkmaz-matisse-thybulle');
INSERT INTO nba.articles (teamId, name, url) VALUES (21, 'Music affecting sixer’s offense ', 'www.phillyvoice.com/study-how-does-music-impact-sixers-76ers-offense-joel-embiid-jj-redick-tj-mcconnell/');
INSERT INTO nba.articles (teamId, name, url) VALUES (7, '3 potential additions in FA ', 'empirewritesback.com/2020/04/15/new-york-knicks-3-potential-2020-free-agent-additions/');
INSERT INTO nba.articles (teamId, name, url) VALUES (7, 'Trading Frank Ntilikina? ', 'dailyknicks.com/2020/04/16/new-york-knicks-leon-rose-unlikely-frank-ntilikina/');
INSERT INTO nba.articles (teamId, name, url) VALUES (25, 'Myles Turner Trade Rumors ', '8points9seconds.com/2020/04/16/indiana-pacers-myles-turner-nba-draft/');
INSERT INTO nba.articles (teamId, name, url) VALUES (25, 'Employees sewing masks for COVID ', '8points9seconds.com/2020/04/16/indiana-pacers-news-masks-community/');
INSERT INTO nba.articles (teamId, name, url) VALUES (20, 'Draft Predictions ', 'www.freep.com/story/sports/nba/pistons/2020/04/16/detroit-pistons-lamelo-ball-nba-mock-draft-tankathon/5139378002/');
INSERT INTO nba.articles (teamId, name, url) VALUES (20, 'Cameraman working Jazz game beats COVID ', 'www.freep.com/story/sports/nba/pistons/2020/04/15/detroit-pistons-coronavirus-kelvin-calhoun-utah-jazz/5141244002/');
INSERT INTO nba.articles (teamId, name, url) VALUES (27, 'Offseason targets ', 'orlandomagicdaily.com/2020/04/13/early-offseason-targets-to-fill-orlando-magics-need-on-the-wings/');
INSERT INTO nba.articles (teamId, name, url) VALUES (27, 'Best playoff performances in franchise history ', 'www.nba.com/magic/gallery/15-best-player-performances-orlando-magic-playoff-history');
INSERT INTO nba.articles (teamId, name, url) VALUES (6, 'Durant sells Oakland home for $6M ', 'www.msn.com/en-us/sports/nba/kevin-durant-selling-9100-square-foot-bay-area-home-for-around-dollar6m/ar-BB12GP9q');
INSERT INTO nba.articles (teamId, name, url) VALUES (6, 'Most realistic third star trade targets ', 'www.netsdaily.com/2020/4/14/21221116/glue-guys-podcast-part-1-nets-most-realistic-third-star-trade-targets');
INSERT INTO nba.articles (teamId, name, url) VALUES (23, 'Grading 2019-20 starters ', 'www.forbes.com/sites/parkercotton/2020/04/16/grading-the-2019-20-washington-wizards-the-starters/#7df0dcd54a93');
INSERT INTO nba.articles (teamId, name, url) VALUES (23, 'Draft a PG? ', 'www.bulletsforever.com/2020/4/15/21221093/washington-wizards-nba-draft-point-guard-john-wall-bradley-beal');
INSERT INTO nba.articles (teamId, name, url) VALUES (22, 'LaMelo and Young ', 'soaringdownsouth.com/2020/04/14/atlanta-hawks-lamelo-ball-trae-young/');
INSERT INTO nba.articles (teamId, name, url) VALUES (22, '5 players Cam Reddish should study ', 'soaringdownsouth.com/2020/04/16/atlanta-hawks-5-players-cam-reddish-study-suspended-play/');
INSERT INTO nba.articles (teamId, name, url) VALUES (24, '5 reasons to be optimistic ', 'swarmandsting.com/2020/04/13/charlotte-hornets-five-reasons-fans-optimistic/');
INSERT INTO nba.articles (teamId, name, url) VALUES (24, 'Sign Hassan Whiteside ', 'swarmandsting.com/2020/04/09/charlotte-hornets-consider-whiteside/');
INSERT INTO nba.articles (teamId, name, url) VALUES (2, 'Kuzma playing with James and Davis ', 'www.silverscreenandroll.com/2020/4/15/21222525/lakers-news-kyle-kuzma-x-factor-lebron-james-anthony-davis-third-star-season-championship-mentality');
INSERT INTO nba.articles (teamId, name, url) VALUES (2, 'Why lakers would sweep Memphis ', 'lakeshowlife.com/2020/04/16/los-angeles-lakers-reasons-sweep-grizzlies/');
INSERT INTO nba.articles (teamId, name, url) VALUES (13, 'Picture of health if NBA season resumes ', 'www.latimes.com/sports/clippers/story/2020-04-09/clippers-could-be-a-picture-of-health-if-nba-season-resumes');
INSERT INTO nba.articles (teamId, name, url) VALUES (13, 'Clippers dreaming about an arena ', 'www.clipsnation.com/2020/3/26/21194996/la-clippers-news-dreaming-arena-own-forum-karl-anthony-towns-seatgeek-furloughs-sixers-olympics');
INSERT INTO nba.articles (teamId, name, url) VALUES (10, 'Draft Predictions ', 'www.denverpost.com/2020/04/15/nba-mock-draft-tracker-denver-nuggets-pick/');
INSERT INTO nba.articles (teamId, name, url) VALUES (10, 'Jokic’s February ', 'hoopshabit.com/2020/04/16/denver-nuggets-nikola-jokic-february/');
INSERT INTO nba.articles (teamId, name, url) VALUES (8, 'Former Jazz Player Trevor Booker retires ', 'www.deseret.com/sports/2020/4/15/21221748/trevor-booker-former-jazz-forward-retires-nba');
INSERT INTO nba.articles (teamId, name, url) VALUES (8, 'Jazz aren’t choosing between Mitchell and gobert ', 'bleacherreport.com/articles/2886693-nba-trade-rumors-jazz-arent-choosing-between-donovan-mitchell-rudy-gobert');
INSERT INTO nba.articles (teamId, name, url) VALUES (30, 'Looking back on 2011-12 thunder ', 'www.welcometoloudcity.com/2020/4/16/21223360/a-look-back-on-the-2011-12-oklahoma-city-thunder');
INSERT INTO nba.articles (teamId, name, url) VALUES (30, 'Over-succeeding season ', 'heavy.com/sports/2020/04/chris-paul-oklahoma-city-thunder-jamal-crawford/');
INSERT INTO nba.articles (teamId, name, url) VALUES (5, 'Westbrook producing 4.2 million masks in honor of Jackie Robinson ', 'www.houstonchronicle.com/texas-sports-nation/rockets/article/Rockets-Russell-Westbrook-provide-masks-42-15204035.php');
INSERT INTO nba.articles (teamId, name, url) VALUES (5, 'Eric Gordon about playing in Vegas ', 'spacecityscoop.com/2020/04/14/houston-rockets-eric-gordon-matt-thomas/');
INSERT INTO nba.articles (teamId, name, url) VALUES (4, 'Trade for Gobert? ', 'thesmokingcuban.com/2020/04/14/dallas-mavericks-2020-trade-rudy-gobert/');
INSERT INTO nba.articles (teamId, name, url) VALUES (4, 'Cuban doesn’t see playing with fans ', 'bleacherreport.com/articles/2886776-mavericks-owner-mark-cuban-on-nbas-return-i-dont-see-us-playing-with-fans');
INSERT INTO nba.articles (teamId, name, url) VALUES (9, 'Ja Morant responds to Kendrick Nunn ', 'www.si.com/nba/grizzlies/news/memphis-grizzlies-guard-ja-morant-responds-to-miami-heat-guard-kendrick-nunns-claim-for-rookie-of-the-year-via-twitter');
INSERT INTO nba.articles (teamId, name, url) VALUES (9, 'How the 8 seed should be handled ', 'www.si.com/nba/grizzlies/news/memphis-grizzlies-coach-taylor-jenkins-on-how-the-eighth-seed-should-be-handled-if-the-nba-season-resumes');
INSERT INTO nba.articles (teamId, name, url) VALUES (1, 'Rodney Hood Injury Update ', 'www.oregonlive.com/blazers/2020/04/rodney-hood-continues-to-make-steady-progress-in-recovery-from-injury-fully-expects-to-be-with-portland-trail-blazers-next-season.html');
INSERT INTO nba.articles (teamId, name, url) VALUES (1, 'McCollum hopes NBA resumes ', 'www.oregonlive.com/blazers/2020/04/portland-trail-blazers-guard-cj-mccollum-still-holding-out-hope-that-nba-season-will-resume.html');
INSERT INTO nba.articles (teamId, name, url) VALUES (12, 'Lonzo Ball lauds JJ Reddick ', 'www.essentiallysports.com/nba-news-you-are-the-toughest-greatest-shooter-lonzo-ball-lauds-fellow-new-orleans-pelicans-player/');
INSERT INTO nba.articles (teamId, name, url) VALUES (12, 'Zion should focus on handler skills ', 'pelicandebrief.com/2020/04/15/new-orleans-pelicans-zion-williamson-passing-point-guard-handling/');
INSERT INTO nba.articles (teamId, name, url) VALUES (11, 'Holmes found home with Kings ', 'www.nbcsports.com/bayarea/kings/richaun-holmes-loves-sacramento-hopes-finish-career-kings');
INSERT INTO nba.articles (teamId, name, url) VALUES (11, 'Kings will match any offer to Bogdanovic ', 'www.sactownroyalty.com/2020/4/13/21218540/sacramento-kings-news-will-match-any-offer-for-bogdanovic');
INSERT INTO nba.articles (teamId, name, url) VALUES (28, 'Popovich inspires food bank staff ', 'www.mysanantonio.com/sports/spurs/article/Spurs-Popovich-inspires-weary-San-Antonio-Food-15201189.php');
INSERT INTO nba.articles (teamId, name, url) VALUES (28, 'Aldridge wants to end career with Spurs ', 'news4sanantonio.com/sports/spurs-zone/aldridge-says-react-to-lillards-tweet-was-a-joke-would-like-to-end-career-with-spurs');
INSERT INTO nba.articles (teamId, name, url) VALUES (29, 'Ty Jerome’s Mentor ', 'valleyofthesuns.com/2020/04/16/phoenix-suns-ty-jerome-veteran-mentor/');
INSERT INTO nba.articles (teamId, name, url) VALUES (29, '6 players who may have played their last game ', 'valleyofthesuns.com/2020/04/15/6-players-last-game-phoenix-suns/');
INSERT INTO nba.articles (teamId, name, url) VALUES (14, 'Karl-Anthony Town’s Mother passes away from coronavirus ', 'www.foxnews.com/sports/minnesota-timberwolves-karl-anthony-towns-mother-passes-away-due-to-coronavirus');
INSERT INTO nba.articles (teamId, name, url) VALUES (14, 'Bill Simmons names timberwolves bottom five GM job ', 'www.canishoopus.com/2020/4/14/21220107/bill-simmons-names-timberwolves-a-bottom-five-gm-job-suns-hornets-pistons-cavaliers');
INSERT INTO nba.articles (teamId, name, url) VALUES (3, 'Why a Wiggins-Love trade does not make sense ', 'www.nbcsports.com/bayarea/warriors/why-warriors-should-not-trade-andrew-wiggins-cavaliers-kevin-love');
INSERT INTO nba.articles (teamId, name, url) VALUES (3, 'Warriors could make deal for Rudy Gobert ', 'bluemanhoop.com/2020/04/16/golden-state-warriors-make-deal-rudy-gobert/');