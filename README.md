# go-app-k8s
golang minikube K8s development env

# Start minikube for MacOS
`minikube start --driver=hyperkit --container-runtime=docker`

# Create an alias to use minikube's kubectl
`alias kubectl="minikube kubectl --"`

# Use minikube's docker
`eval $(minikube docker-env)`

# Remove k8s resources

`kubectl delete all --all -n go-app-k8s`

# Check app

`curl http://$(minikube ip):31234/ping`

# Delete K8s resources
`kubectl delete all --all -n go-app-k8s`