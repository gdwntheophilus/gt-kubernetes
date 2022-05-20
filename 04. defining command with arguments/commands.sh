kubectl run gt-pod --image=busybox -o yaml --dry-run=client --restart=Never > pod.yaml \
    -- /bin/sh -c "while true;do date;sleep 10;done"

kubectl create -f pod.yaml

kubeclt logs gt-pod