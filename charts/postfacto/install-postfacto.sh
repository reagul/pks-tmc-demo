NAMESPACE=postfacto

kubectl create namespace $NAMESPACE
helm3 install --namespace $NAMESPACE postfacto --values ./deployment-values.yaml https://github.com/pivotal/postfacto/releases/download/4.1.1/postfacto-0.1.0-beta.tgz

kubectl --namespace $NAMESPACE apply -f postfacto-ingress-us-azure-bekind-io.yaml

# I deleted the secrets in the following yaml.  you'll have to set up your own ingress TLS
kubectl --namespace $NAMESPACE apply -f ingress-tls-us-azure-bekind-io.yaml

