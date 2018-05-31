# Node.js version
FROM node:8

# install nodemon
RUN npm install --global gatsby-cli

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# get the npm modules that need to be installed
COPY package.json /usr/src/app/

# install npm modules
RUN npm install

# copy the source files from host to container
COPY . /usr/src/app

CMD npm run build