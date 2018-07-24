# Select base image
FROM node:10.4.0-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# If you are building your code for production, RUN npm install --only=production
RUN npm install

# Bundle application source
COPY . .

# Mark port on container
EXPOSE 8080

# Application start command
CMD [ "npm", "start" ]
