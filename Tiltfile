# -*- mode: Python -*-

k8s_yaml('app.yml')

docker_build('nodejs-express-base-image',
             './package',
             dockerfile='base.dockerfile',
             build_args={'node_env': 'development'})

docker_build('nodejs-express-app-image',
             '.',
             dockerfile='app.dockerfile',
             entrypoint='yarn run nodemon /var/www/app/server.js',
             live_update=[
               sync('.', '/var/www/app')
             ])

k8s_resource('nodejs-express-app', port_forwards=3000)
