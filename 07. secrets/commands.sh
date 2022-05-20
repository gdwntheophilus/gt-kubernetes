creating a secret
-------------------------------------------------
Literal:
kubectl create secret generic gt-secret-literal --from-literal=password=Admin123

Environment:
kubectl create secret generic gt-secret-env --from-env-file=secret.env

FromFile:
Kubectl create secret generic gt-secret-file --from-file=id_rsa=/Users/godwin/.ssh/id_rsa 


describe the secret
-------------------------------------------------
kubectl get secrets
kubectl describe secret gt-secret-literal


encrypt a password
-------------------------------------------------
echo -n 'Admin123' | base64
QWRtaW4xMjM=