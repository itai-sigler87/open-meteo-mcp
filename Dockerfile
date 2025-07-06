# Use an official lightweight Node.js image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install all dependencies (including dev for building)
RUN npm install

# Bundle app source
COPY . .

# Build the TypeScript code into JavaScript
RUN npm run build

# Expose the port the app runs on. Render will use this.
EXPOSE 3000

# Define the command to run your app in production.
# The start script in package.json handles running the server correctly.
CMD [ "npm", "start" ]
