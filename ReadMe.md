Wiki Sports!
# Instructions for using docker-compose

This is a brief guide on how to use docker-compose to get a sense of the environment on which our project will run

# Steps
1. First off, make sure you have docker installed! There shouldn't be an issue with MacOS or Linux, however there could be some issue with the paravirtualization method used in windows. Make sure hyper-v and containers are turned on!

2. You probably already have our repository cloned onto your local machine, however the dockerization has been done on the master branch. All you have to do is open a terminal inside of the cloned repository and enter the following command: `git checkout master`...You should now be in my branch, and the files/directories should have changed to reflect this. You should now see a file called "docker-compose.yml"

3. Make sure you have the most recent commit and do the following : `git pull`

4. In a seperate terminal inside the same directory do the following command : `docker-compose up --build` This will take at least 2 minutes to do as it has to download all the appropriate docker images and dependencies.

5. You know everything is ready when you see:

![alt text](https://github.com/Sports-Database/WikiSports/blob/master/Docker_Tut/first_build.PNG "built, but DB not ready")

6. If you know how to use postman and know my routes/endpoints you may go ahead and test to see how those work. However, if you have no idea about any of the former, you can still check the mysql database to make sure that the database is up with our data. To do that, you can proceed to the next steps.

7. In a separate terminal at the same directory of our repository, do the following:

8. `docker exec -t -i wikisports_wiki-sports-db_1 /bin/bash` (it works if you see something like `root@1a88efef:/#`)

9. `mysql -uroot -ppassword`  (it works if you see `mysql>`)

10. `show databases;` You should see:
```
+--------------------------+
|                          |
| Database                 |
+--------------------------+
| information_schema       |
| mysql                    |
| performance_schema       |
| sys                      |
| wiki_sports              |
+--------------------------+
```
If you do not see the "wiki_sports" database, then something went wrong. Please let me know! If it worked please proceed


11. `use wiki_sports;`


12. `show tables;`
You should then see the following
```
+-----------------------+
| Tables_in_wiki_sports |
+-----------------------+
| acronyms              |
| contracts             |
| games                 |
| league                |
| players               |
| rosters               |
| seasons               |
| stats                 |
| teams                 |
+-----------------------+

```
If you saw what's show above, SUCCESS!!!

if instead, you saw `Empty set (0.00 sec)` something went wrong and you should let me know!

13. You're done! You can keep messing around with the container or you can close the session with `docker-compose down`
