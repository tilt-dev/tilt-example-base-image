# -*- mode: Python -*-

k8s_yaml('app.yml')
docker_build('tilt.dev/nodejs-express-base', 'package', dockerfile='base.dockerfile')
app = fast_build('tilt.dev/nodejs-express-app', 'app.dockerfile', 'node server.js')
app.add('.', '/var/www/app')
k8s_resource('nodejs-express-app', port_forwards=3000)
