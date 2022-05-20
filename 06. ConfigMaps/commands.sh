Create a config map
---------------------------------------------
Literal:
kubectl create configmap db-config --from-literal=db=staging --from-literal=user=root --from-literal=password=root

Env:
kubectl create configmap db-config --from-env-file=db-config.env

form file:
kubectl create configmap db-config --from-file=db-config.txt


describe the config file and see its contents:
---------------------------------------------
kubectl describe configmap db-config

#the only disadvatage here is the the password will be visible in the logs



example of the pod creation
---------------------------------------------
kubectl apply -f configmap.yaml
kubectl apply -f podUsingConfigmap.yaml 

kubectl exec -it configured-pod -- /bin/sh


❯ kubectl exec -it configured-pod -- /bin/sh
# 
# 
# pwd
/
# 
# env
KUBERNETES_SERVICE_PORT=443
KUBERNETES_PORT=tcp://10.96.0.1:443
HOSTNAME=configured-pod
HOME=/root
database_url=jdbc:postgres://localhost/test
PKG_RELEASE=1~buster
TERM=xterm
user=gtadmin
KUBERNETES_PORT_443_TCP_ADDR=10.96.0.1
NGINX_VERSION=1.19.0
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
KUBERNETES_PORT_443_TCP_PORT=443
NJS_VERSION=0.4.1
KUBERNETES_PORT_443_TCP_PROTO=tcp
KUBERNETES_SERVICE_PORT_HTTPS=443
KUBERNETES_PORT_443_TCP=tcp://10.96.0.1:443
KUBERNETES_SERVICE_HOST=10.96.0.1
PWD=/
# hostname -i
10.1.0.39
# 

