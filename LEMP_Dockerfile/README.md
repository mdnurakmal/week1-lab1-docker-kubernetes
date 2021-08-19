# LEMP Stack using Dockerfile

Run dockerfile containing LEMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker build . -t mdnurakmal:lemp
docker run -d -t -v $(pwd)/html:/var/www/html -p 80:80/tcp --name lemp -e MYSQL_ROOT_PASSWORD=password mdnurakmal:lemp
```
* Check nginx is running by going to HOSTIP/index.html
* Check php is running by going to HOSTIP/index.php
* Check phpmyadmin/mariadb is running by going to HOSTIP/phpmyadmin , Login Username : root , Password: password

# References
