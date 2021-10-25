FROM node:16-alpine

# Default value; will be overridden by build_args, if passed
ARG node_env=production

ENV NODE_ENV $node_env

WORKDIR '/var/www/app'
ADD package.json package.json
RUN npm install
ENTRYPOINT node server.js
