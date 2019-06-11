#/bin/bash

kubectl config  set-context minikube --cluster=minikube --namespace=default --user=minikube
kubectl config use-context minikube


kubectl run pg1 --replicas=1 --image=postgres:11.2


kubectl exec -it pg1-5cb7dfc4f-6m6sj -- bash