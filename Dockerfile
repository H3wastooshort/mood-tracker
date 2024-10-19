FROM node:22
WORKDIR /usr/src/app
COPY docker/package*.json .
RUN apt-get install python3 make g++ git
RUN npm install
COPY . .
COPY docker .
EXPOSE 8228
CMD [ "node", "app.js" ]
