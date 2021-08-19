# LAMP Stack using Dockerfile

Run dockerfile containing LAMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker build . -t mdnurakmal:lamp
docker run -d -t -v $(pwd)/html:/var/www/localhost/htdocs/ -p 80:80/tcp --name lamp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lamp
```
* Check apache2 is running by going to HOSTIP/index.html
* Check php is running by going to HOSTIP/index.php
* Check phpmyadmin/mariadb is running by going to HOSTIP/phpmyadmin , Login Username : root , Password: password

```

# References
* https://www.sentiatechblog.com/running-apache-in-a-docker-container
* https://github.com/j1cs/docker-lamp
