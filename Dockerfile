# Use Node.js v10
FROM node:10

# Set the working directory inside the container
WORKDIR /usr/src/lafs

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install -g @angular/cli@v6-lts 
RUN npm install

# Copy all project files
COPY . .

# Expose port 4200 for Angular
EXPOSE 4200

# Start the Angular app
CMD ng serve --host 0.0.0.0

