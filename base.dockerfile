FROM node:9-alpine

WORKDIR '/var/www/app'
RUN npm install -g pino-pretty
ADD package.json package.json
RUN npm install
ENTRYPOINT node server.js | pino-pretty -c