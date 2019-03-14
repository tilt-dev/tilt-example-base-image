FROM node:9-alpine
# Or whatever Node version/image you want
WORKDIR '/var/www/app'
ADD package.json package.json
RUN npm install