# week1-lab1-docker-kubernetes
Lab objectives
1.	Install Docker
2.	Install minikube
3.	Write docker file for LAMP & LEMP
4.	Write docker file for docker-compose LAMP/LEMP
5.	By using kubectl command start kubernetes dashboard and deploy some basic services (Any)

Lab works were done and tested in ubuntu VM running from DigitalOcean droplet

# Install Docker

Install using the convenience script
```shell
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```
# Install minikube

```shell
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```

# Write docker file for LAMP & LEMP
Run script to build docker image and run LAMP  stack with only 1 container
```shell
. lamp_dockerfile.sh
```

Run script to build docker image and run LEMP stack with only 1 container
```shell
. lemp_dockerfile.sh
```

# Write docker file for docker-compose LAMP/LEMP

Install docker compose
```shell
apt install docker-compose
```

Run script to build docker image and run LAMP stack with multiple containers using docker swarm
```shell
. lamp_dockercompose.sh
```

Run script to build docker image and run LEMP stack  with multiple containers using docker swarm
```shell
. lemp_dockercompose.sh
```

# By using kubectl command start kubernetes dashboard and deploy some basic services (Any)

Install kubectl
```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
```
* Create kubernetes cluster locally using minikube
* Install socat needed for port forwarding kubernetes dashboard
```shell
sudo apt-get install -y conntrack
apt-get -y install socat
minikube start --driver=none
```

* Create nginx deployment using kubectl
* Check nginx is running by going to the url given in the CLI
```shell
cd kubectl
kubectl apply -f nginx.yaml
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80
minikube service nginx-deployment
```

* Create kubernetes dashboard deployment
* Check dashboard is running by going to https://HOSTIP:10443
```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.2.0/aio/deploy/recommended.yaml
kubectl port-forward -n kubernetes-dashboard service/kubernetes-dashboard 10443:443 --address 0.0.0.0
```

Clean up
```shell
kubectl delete deployment  nginx-deployment
kubectl delete service  nginx-deployment
minikube delete
```

# Learning Notes
* unable to run ./script.sh (Check LF line ending for that particular file)
* Unable to run ./run.sh ? But sh run.sh works
* If the container is unresponsive do you restart it or you destroy and spawn a new container ?
* ENTRYPOINT and CMD always run even after restarting container
* The --no-cache option allows to not cache the index locally, which is useful for keeping containers small.
* Multi-services in one container vs One service in one container architecture (Dockerfile vs Docker compose)
* COPY should almost always be used over ADD
* Use network alias in dockercompose to resolve container ip from container name
* You do not send the code over to the FPM machine, so you have to deploy the code there to. It has to be in the same directory as it is on the host.
