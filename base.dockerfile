FROM node:13

RUN apt-get update && apt-get install entr
WORKDIR '/var/www/app'
ADD package.json package.json
RUN npm install
ENTRYPOINT echo "server.js" | entr node server.js