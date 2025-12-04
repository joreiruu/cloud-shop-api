# 1. Start with a lightweight version of Node 18 (Linux-based)
FROM node:18-alpine

# 2. Set the folder inside the container
WORKDIR /app

# 3. Copy package definitions first (Optimizes build speed)
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of your code
COPY . .

# 6. Open the port
EXPOSE 3000

# 7. Start the app
CMD ["node", "server.js"]