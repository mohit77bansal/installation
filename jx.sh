docker-registry:
  enabled: false

monocular:
  enabled: false

myvalues.yaml

kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole=cluster-admin \
  --user=$(gcloud config get-value core/account)

gcloud container clusters get-credentials kuants

jx install --external-ip='IP' --domain='galaxycard.in' --git-provider-kind=bitbucketcloud --git-private=true --git-username='' --git-provider-url='https://bitbucket.org' --no-tiller=true --provider=gke --default-admin-password='JENKINS PASS' --default-environment-prefix='galaxycard' --docker-registry='gcr.io' --gitops=true --no-gitops-vault=true --environment-git-owner='galaxycard'
strategy:
    rollingUpdate:
      maxSurge: 1
      maxUnavailable: 1
    type: RollingUpdate

gcloud dns record-sets import -z=examplezonename --zone-file-format path-to-example-zone-file

apiVersion: v1
data:
  key: cloud-key
kind: Secret
metadata:
  name: aws-route53-creds
  namespace: cert-manager
type: Opaque


https://medium.com/google-cloud/kubernetes-w-lets-encrypt-cloud-dns-c888b2ff8c0e
https://acme-v02.api.letsencrypt.org/directory
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/00-crds.yaml
kubectl apply --validate=false -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/cert-manager.yaml
ServiceAccountAnnotations:
      certmanager.k8s.io/cluster-issuer: letsencrypt-production
      certmanager.k8s.io/acme-challenge-type: dns01
      certmanager.k8s.io/acme-dns01-provider: prod-route53