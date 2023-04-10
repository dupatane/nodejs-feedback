FROM node:14

WORKDIR /app

VOLUME /app/feedback

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]
