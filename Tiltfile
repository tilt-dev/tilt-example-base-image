# -*- mode: Python -*-

k8s_yaml('app.yml')

docker_build('tilt.dev/nodejs-express-base', 'package', dockerfile='base.dockerfile')

docker_build('tilt.dev/nodejs-express-app', '.', dockerfile='app.dockerfile',
             live_update=[sync('.', '/var/www/app')])

k8s_resource('nodejs-express-app', port_forwards=3000)
