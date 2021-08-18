# week1-lab1-docker-kubernetes
docker kubernetes

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
Run script to build docker image and run LAMP stack containers
```shell
. lamp.sh
```

Run script to build docker image and run LEMP stack containers
```shell
. lemp.sh
```



# Write docker file for docker-compose LAMP/LEMP
# By using kubectl command start kubernetes dashboard and deploy some basic services (Any)


# Learning Notes
* unable to run ./script.sh (Check LF line ending for that particular file)
* Unable to run ./run.sh ? But sh run.sh works
* If the container is unresponsive do you restart it or you destroy and spawn a new container ?
* ENTRYPOINT and CMD always run even after restarting container
* The --no-cache option allows to not cache the index locally, which is useful for keeping containers small.
*
