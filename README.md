# go-app-k8s
Golang app running in a local Kubernetes development environment using Minikube.

## Prerequisites
- Minikube: You need to have Minikube installed on your machine. If you don't have it, follow the installation instructions on the [Minikube repository](https://github.com/kubernetes/minikube).

## Getting Started

### Start Minikube (MacOS)
```shell
minikube start --driver=hyperkit --container-runtime=docker
```

### Set Up `kubectl` Alias
To use Minikube's `kubectl` command, create an alias:
```shell
alias kubectl="minikube kubectl --"
```

### Use Minikube's Docker Environment
```shell
eval $(minikube docker-env)
```

### Start the App
```shell
./setup.sh
```

### Check the App
```shell
curl http://$(minikube ip):31234/ping
```

### Delete Kubernetes Resources
To delete all Kubernetes resources related to the app:
```shell
kubectl delete all --all -n go-app-k8s
```

## License
[MIT License](LICENSE)
```

Feel free to modify the instructions and add any additional information specific to your application.
