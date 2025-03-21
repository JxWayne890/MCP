FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json if you have them (optional)
# COPY package*.json ./
# RUN npm install

# Copy the rest of your code
# COPY . .

# Render will provide a PORT env var, but MCP typically defaults to 3000 or 8080.
# If the MCP supports specifying the port, you can pass it in here.

# Use the environment variable for the Stripe secret key
CMD ["npx", "-y", "@stripe/mcp", "--tools=all", "--api-key=$STRIPE_SECRET_KEY"]
