FROM node:lts-alpine AS SingleStage

WORKDIR /app

COPY ./src/package*.json ./

RUN npm install

COPY ./src .

EXPOSE 8080

CMD ["node", "server.js"]
