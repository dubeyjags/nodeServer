FROM node:24-alpine

COPY package*.json ./

RUN npm install

COPY index.js index.js

CMD [ "node", "index.js" ]