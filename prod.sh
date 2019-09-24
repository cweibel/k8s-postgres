#/bin/bash

echo "helm install -f ./values-production.yaml  --name alan --set postgresqlDatabase=pickles,postgresqlPassword=pickles --set service.type=NodePort stable/postgresql"

helm install -f ./values-production.yaml  --name alan --set postgresqlDatabase=pickles,postgresqlPassword=pickles --set service.type=NodePort stable/postgresql


