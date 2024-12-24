# Step 1: Use an official Node.js image as the base
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Step 4: Install the app dependencies
RUN npm install

# Step 5: Copy the rest of the application files
COPY . .

# Step 6: Expose the port the app runs on
EXPOSE 8080

# Step 7: Define the command to run the app
CMD ["node", "./frontend/src/*.js"]

