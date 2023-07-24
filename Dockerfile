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

# Set the MongoDB connection string as an environment variable
ENV MONGODB_URI=mongodb://localhost:27017/pacman

# Specify the command to run your app
CMD mongod & npm start