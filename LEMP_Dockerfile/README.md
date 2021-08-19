# week1-lab1-docker-kubernetes

Run dockerfile containing LEMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker build . -t mdnurakmal:lemp
docker run -d -t -v $(pwd)/html:/var/www/html -p 80:80/tcp --name lemp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lemp
```
Access the newly created container
```shell
docker exec -it lamp /bin/sh
```

# References
