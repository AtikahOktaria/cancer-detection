FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . ./

COPY src/.env .env

EXPOSE 8000
ENV PORT=8000

CMD ["node", "src/app.js"]
