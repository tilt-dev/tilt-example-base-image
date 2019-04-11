FROM tilt.dev/nodejs-express-base

WORKDIR '/var/www/app'

ADD . .
