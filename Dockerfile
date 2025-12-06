# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of project
COPY . .

# Expose port
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]
