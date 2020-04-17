FROM node:12 as build-deps

# WORKDIR specifies the application directory
WORKDIR /usr/src/app

# Copying package.json file to the app directory
COPY package.json /usr/src/app

# Installing npm for DOCKER
RUN npm install

# Installing mysql for DOCKER
RUN npm install mysql

# Installing nodemon for DOCKER
RUN npm install nodemon

# Copying rest of the application to app directory
COPY . /usr/src/app

EXPOSE 8080

# Starting the application using npm start
CMD [ "npm", "start" ]
