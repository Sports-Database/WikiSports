# Instructions for using docker-compose

This is a brief guide on how to use docker-compose to get a sense of the environment on which our project will run

# Steps
1. First off, make sure you have docker installed! There shouldn't be an issue with MacOS or Linux, however there could be some issue with the paravirtualization method used in windows. Make sure hyper-v and containers are turned on!

2. You probably already have our repository cloned onto your local machine, however the dockerization has been done on the master branch. All you have to do is open a terminal inside of the cloned repository and enter the following command: `git checkout master`...You should now be in master branch, and the files/directories should have changed to reflect this. You should now see a file called "docker-compose.yml"

3. Make sure you have the most recent commit and do the following : `git pull`

4. In a seperate terminal inside the same directory do the following command : `docker-compose up --build` This will take at least 2 minutes to do as it has to download all the appropriate docker images and dependencies.

5. You know everything is ready when you see:

![alt text](https://github.com/Sports-Database/WikiSports/blob/master/Docker_Tut/first_build.PNG "built, but DB not ready")

6. When you get to this point, you will have to bring down the application from docker. Open a seperate terminal within the directory and do the following : `docker-compose down`. This brings down the image. You should see three instances of the containers being brought down with the word "done" next to them.

7. After the containers have been brought down, put them back up, except this time, you don't have to build. Go back to to the other terminal and do: `docker-compose up`. Wait at least 30 seconds to go up.

8. If it has gone up properly, you should see:

![alt text](https://github.com/Sports-Database/WikiSports/blob/master/Docker_Tut/Success.PNG "built, but DB not ready")

9. If you're at this point, the application works! Open a browser window. Type the following in the URL: `http://localhost:3000/. You should now see our application. Have fun!

10. Once you are done. Make sure to go back to one of the terminals and do the following: `docker-compose down`. This is important!
