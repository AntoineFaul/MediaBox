microk8s enable helm3
microk8s kubectl create namespace cert-manager
microk8s helm3 repo add jetstack https://charts.jetstack.io
microk8s helm3 update
microk8s helm3 install cert-manager jetstack/cert-manager --namespace cert-manager --set installCRDs=true
