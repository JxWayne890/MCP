# Use Node 18
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json if you have them (optional)
# COPY package*.json ./

# If you plan to install any local dependencies:
# RUN npm install

# Copy the rest of your code
COPY . .

# Render will provide a PORT env var. If MCP can be configured to respect $PORT, do so here.
# If the MCP doesn't allow specifying the port, it usually defaults to 3000 or 8080, and Render routes accordingly.

# The main command to run the MCP server
CMD ["npx", "-y", "@stripe/mcp", "--tools=all", "--api-key=sk_test_51R2HlIP4vqXClkB6uakzZV9hY7crIhoVRmjy7OAELLeWjZhxa4TVaZhWLgwvmMsU0UEHFt8oi8sNhnLYg04rAOe700qbn3w4hP"]
