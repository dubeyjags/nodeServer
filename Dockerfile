FROM node:24-alpine

COPY package*.json ./
COPY index.js index.js

RUN npm install

CMD [ "node", "index.js" ]