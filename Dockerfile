# Use a slim Node.js image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if using)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your application code
COPY . .

# Expose port (replace 5000 with your desired port)
EXPOSE 3000

# Start the server using CMD
CMD [ "npm", "start" ]

# Alternatively, start the server directly using a custom script
# CMD [ "node", "index.js" ] 
