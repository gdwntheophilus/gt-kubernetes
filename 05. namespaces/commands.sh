create a namespace 
---------------------------------------------
kubectl create namespace gt-namespace
kubectl get namespaces


create a pod under the namespace
---------------------------------------------
kubectl run gt-pod --image=nginx --restart=Never --namespace=gt-namespace
(or)
kubectl run gt-pod --image=nginx --restart=Never -n=gt-namespace

verify the pod
---------------------------------------------
kubectl get pods --namespace=gt-namespace
(or)
kubectl get pods -n gt-namespace


delete a namespace
---------------------------------------------
kubectl delete namespace gt-namespace