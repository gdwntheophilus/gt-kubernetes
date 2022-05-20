create service accounts
-------------------------------------------------
Pods use a service account to authenticate with the API server through
an authentication token

kubectl create serviceaccount gt-serviceaccount
kubectl get serviceaccounts

kubectl get serviceaccount default -o yaml | grep -A 1 secrets


kubectl run nginx --image=nginx --serviceaccount=gt-serviceaccountkubectl run nginx --image=nginx --serviceaccount=gt-serviceaccount


❯ k get pod nginx -o yaml  | grep -C 2 service
--
  schedulerName: default-scheduler
  securityContext: {}
  serviceAccount: gt-serviceaccount
  serviceAccountName: gt-serviceaccount
  terminationGracePeriodSeconds: 30
  tolerations:
--
      defaultMode: 420
      sources:
      - serviceAccountToken:
          expirationSeconds: 3607
          path: token
  ~/pr/g/gt-kubernetes/10. service Accounts   main !2 ?4 ❯                                                               06:45:23 pm
