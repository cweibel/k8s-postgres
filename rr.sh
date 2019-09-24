#/bin/bash

NODEPORT=$1

echo 'psql -h 192.168.99.100 -p <nodeport> -U postgres postgres -c "SELECT inet_server_addr();"'
echo "password is: $(kubectl get secret --namespace default alan-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode)"

psql -h 192.168.99.100 -p $NODEPORT -U postgres postgres -c "SELECT inet_server_addr();"
