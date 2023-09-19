FROM  node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
CMD ["node", "app.js"]


