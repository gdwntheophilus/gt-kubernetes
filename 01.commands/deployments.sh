1st: make an alias
------------------------------------
alias k='kubectl'


Commands
------------------------------------
kubectl create deployment <deployment_name> --image=<imagename>
kubectl create deployment gt-nginx --image=nginx
kubectl get pods 
kubectl delete -f my.yaml

example:
kubectl create deployment gt-nginx --image=nginx

kubectl get replicaSet
kubectl get deployments
kubectl edit deployments


mongodb
------------------------------------
kubectl create deployment gt-mongo --image=mongo --replicas=1


yaml files
------------------------------------
kubectl apply -f my.yaml