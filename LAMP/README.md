# week1-lab1-docker-kubernetes
Run dockerfile containing LAMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker build . -t mdnurakmal:lamp
docker run -d -v $(pwd)/html:/var/www/localhost/htdocs/ -P mdnurakmal:lamp
docker run -d -v /html:/var/www/localhost/htdocs/ -e MYSQL_ROOT_PASSWORD=password -P --name lamp mdnurakmal:lamp
```
Access the newly created container
```shell
docker exec -it <Container-id> /bin/sh
```


# References
* https://www.sentiatechblog.com/running-apache-in-a-docker-container
* https://github.com/j1cs/docker-lamp
