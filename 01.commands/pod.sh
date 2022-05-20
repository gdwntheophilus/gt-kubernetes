kubectl logs <pod_name>
kubectl describe pod <pod_name>
kubectl describe deployment <deployment_name>
kubectl get pods 
kubectl exec -it <pod_name> -- bash
kubectl delete pod <pod_name> --grace-period=0 --force

kubectl delete pod frontendpod
kubectl delete -f pod.yaml 