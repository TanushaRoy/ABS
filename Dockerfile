# Step 1: Set base image
FROM node:20

# Step 2: Set up the working directory
WORKDIR /app

# Step 3: Copy dependencies
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the source code
COPY . .

# Step 6: Build the Next.js app
RUN npm run build

# Step 7: Expose the default Next.js port
EXPOSE 3000

# Step 8: Start the Next.js server
CMD ["npm", "run", "dev"]
