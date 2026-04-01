FROM node:12

WORKDIR /app
ADD index.js package*.json ./

EXPOSE 8080
RUN npm install
CMD node index.js
