docker build -t gt-hello-world:1.0.0 .

docker images

docker run -d -p 8080:8080 gt-hello-world:1.0.0

docker login

curl http://localhost:8080/

docker tag gt-hello-world:1.0.0 gdwntheophilus/gt-hello-world:1.0.0

docker push gdwntheophilus/gt-hello-world:1.0.0

kubectl run gt-hello-world --image=gdwntheophilus/gt-hello-world:1.0.0 --port=8080 \
    --restart=Never --labels="app=gt-hello-world,env=prod" \
    --env="DNS_DOMAIN=cluster" \
    -o yaml --dry-run=client > pod.yaml

kubectl apply -f pod.yaml

kubectl describe pod gt-hello-world

kubectl logs gt-hello-world

kubectl logs -f gt-hello-world

kubectl exec -it gt-hello-world -- /bin/bash
kubectl exec -it gt-hello-world -- env

kubectl delete pod gt-hello-world
kubectl delete -f pod.yaml