#/bin/bash

# Overview:
#  - There is a server side (tiller) and client side (helm) to install
#  - Instructions from https://docs.bitnami.com/kubernetes/get-started-kubernetes/

echo "*********************************"
echo "Installing Client Side tooling..."
echo "*********************************"

echo "Installing helm client using homebrew..."
brew install kubernetes-helm

echo "*********************************"
echo "Installing Server Side tooling..."
echo "*********************************"

echo "Need to populate the file clusterrole.yaml..."
kubectl create -f clusterrole.yaml

#if the previous line errored you likely already have an account clusterrole named cluster-admin and you are all good


echo "Installing service account for tiller..."
kubectl create serviceaccount -n kube-system tiller

echo "Binding tiller service account to role..."
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller\n

echo "Helm, installing the world..."
helm init --service-account tiller
