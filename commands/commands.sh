Commands
------------------------------------
kubectl create deployment <deployment_name> --image=<imagename>
kubectl create deployment gt-nginx --image=nginx
kubectl get pods 
kubectl delete -f my.yaml

example:
kubectl create deployment gt-nginx --image=nginx
kubectl get pods 
kubectl get replicaSet
kubectl get deployments
kubectl edit deployments
kubectl logs <pod_name>
kubectl describe pod <pod_name>
kubectl describe deployment <deployment_name>

kubectl exec -it <pod_name> -- bash

mongodb
------------------------------------
kubectl create deployment gt-mongo --image=mongo --replicas=1


yaml files
------------------------------------
kubectl apply -f my.yaml