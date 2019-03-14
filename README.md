# Example NodeJS on Local K8s app

Requirements: [Tilt](https://tilt.dev/)

With a local Kubernetes environment, run:

```
tilt up
```

If you get errors trying to push to gcr.io/windmill-public-containers, that means
you're not using a local Kubernetes environment (like Docker For Mac or Minikube).
See [the FAQ](https://docs.tilt.dev/faq.html#q-how-do-i-change-what-kubernetes-cluster-tilt-uses) for more info.

# Endpoints

## Hello World

```sh
curl http://localhost:3000
```