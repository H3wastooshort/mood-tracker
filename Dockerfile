FROM node:current-alpine
WORKDIR /usr/src/app
COPY docker/package*.json .
RUN apk add python3 make g++
RUN npm install
COPY . .
COPY docker .
EXPOSE 8228
CMD [ "node", "app.js" ]
