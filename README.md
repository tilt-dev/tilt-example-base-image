# tilt-example-base-image

[![Build Status](https://circleci.com/gh/tilt-dev/tilt-example-nodejs/tree/master.svg?style=shield)](https://circleci.com/gh/tilt-dev/tilt-example-nodejs)


## Why

In microservice apps, you often have a base image
that defines a shared set of language toolchains or dependencies.
Then individual apps share the base image.

This repo shows a [Tiltfile](Tiltfile) that builds
a base image, then an app image, then deploys the app.
When you make changes to the files, Tilt will live-update
the app with your changes.

For a detailed explanation of this code, see the tutorial:

https://docs.tilt.dev/dependent_images.html

## How

With a local Kubernetes environment, run:

```
tilt up
```

The view the app:

```sh
curl http://localhost:3000
```

## License

Copyright 2020 tilt.dev

Licensed under [the Apache License, Version 2.0](LICENSE)
