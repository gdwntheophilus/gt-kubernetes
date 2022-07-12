Two approaches
1. init Container 
2. side car

create a container but add the config file to the container
------------------------------------------------------------------------
kubectl apply -d initContainer.yaml


to check the logs of the init configured container
------------------------------------------------------------------------
kubectl logs business-app -c configurer


since these are all multi-containers we have to get logs in below format
------------------------------------------------------------------------
kubectl exec adapter -c configurer -it -- /bin/sh
(or)
kubectl exec adapter --container=transformer -it -- /bin/sh