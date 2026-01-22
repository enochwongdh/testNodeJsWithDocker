# the base img to start with
FROM node:24

# Create app directory
WORKDIR /usr/src/app

# Get the package.json
COPY package.json ./

# install dependencies in package.json (skip due to network connection)
RUN npm install

# Copy app files
COPY . .

#expose the port out node app will be hosted on
EXPOSE 8080

# START THE SERVER
CMD ["node", "server.js"]