creating resource quota
--------------------------------------------------
kubectl create namespace team-awesome

kubectl apply -f resourceQuota.yaml -n team-awesome

kubectl get resourcequota -n team-awesome

kubectl describe resourcequota -n team-awesome

kubectl apply -f podUsingResourceQuota.yaml --namespace=team-awesome

kubectl get pods --namespace=team-awesome
