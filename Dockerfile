FROM node:14-alpine

# Set the working directory to /app
WORKDIR /

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in package.json
RUN npm install && npm i aws-sdk

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Start the app when the container launches
CMD ["npm", "start"]