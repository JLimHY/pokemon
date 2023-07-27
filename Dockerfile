# Specify the base image
FROM node:6.9.0

# Set the working directory inside the container
WORKDIR /app

# Copy the app's source code into the container
COPY . /app

# Install dependencies (if required)
RUN npm install

#Expose the port your app listens on
EXPOSE 8080

# Specify the command to run your app
CMD mongod & npm start
