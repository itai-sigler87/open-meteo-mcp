# Use an official lightweight Node.js image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Install the server package from npm
# This is more efficient than copying all source files
RUN npm install open-meteo-mcp-server

# Your app binds to port 3000
EXPOSE 3000

# Define the command to run your app
CMD [ "npx", "open-meteo-mcp-server" ]
