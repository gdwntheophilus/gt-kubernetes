# kubernetes architecture
monolith to microservices

1 master node and many worker nodes (1 master and many workers)
each node has kublet process running on it
Kubelet is the process which lets the cluster and nodes communicate with each other

docker pods run on the worker nodes 

so what is running on the master nodes?
runs several process to run and manage the worker nodes

Control plane
------------------------------------
1. API server ( it is a container, it is an entry point of a kubernetes cluster ) the UI / API and CLI 
everything will communicate to the API server 
2. Control Manager - Keeps track of what is going on with the cluster 
if cluster need repair etc
3. Scheduler - decides where to place the pods, based on workload, ensures pods placement
4. etcd which is a key value storage

VIRTUAL NETWORK 
------------------------------------
on top of all of this 
we have virtual network which combines all the nodes into a single powerful machine

components
------------------------------------
- pod ( abstraction over images )
- service ( external / internal )
- configMap
- Secret 
- StatefulSet 
- replicaSet
- Deployment ( blueprint )
- DaemonSet
- ingress
- Volumes


3 parts of the configuration file
------------------------------------
metadata
spec
status
 
encrypt the values in secrets file
------------------------------------
echo -n mongouser | base64
echo -n mongopassword | base64
