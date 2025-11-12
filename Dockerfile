# Intentionally using older base to trigger vulnerabilities
FROM node:11-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

CMD ["node", "index.js"]
