# week1-lab1-docker-kubernetes

Run dockerfile containing LAMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker build . -t mdnurakmal:lamp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs/ -p 80:80/tcp --name lamp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lamp
```
Access the newly created container
```shell
docker exec -it lamp /bin/sh
```

# References
* https://www.sentiatechblog.com/running-apache-in-a-docker-container
* https://github.com/j1cs/docker-lamp
