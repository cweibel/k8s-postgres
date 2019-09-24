#/bin/bash

helm delete alan --purge
kubectl delete pvc data-alan-postgresql-0
kubectl delete pvc data-alan-postgresql-master-0
kubectl delete pvc data-alan-postgresql-slave-0
kubectl delete pvc data-alan-postgresql-slave-1
kubectl delete pvc data-alan-postgresql-slave-2
