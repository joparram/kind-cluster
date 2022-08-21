#/bin/bash
kind delete cluster --name=local
kind create cluster --config=cluster.yaml
cd 01-calico
./install.sh
cd -;cd 02-load-balancer
./install.sh
cd -;cd 03-nginx-ingress-controller
./install.sh
cd -;cd 04-dns-server
su joparram -c "vagrant up --provision"
cd -;cd 05-testapp
./install.sh
cd -
