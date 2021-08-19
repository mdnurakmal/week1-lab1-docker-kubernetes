# LAMP Stack using Docker compose

Run docker-compose containing LAMP stack </br>
Tag your image according to your dockerhub repository

```shell
docker-compose up -d
```

* Check apache2 is running by going to <HOSTIP>/index.html
* Check php is running by going to <HOSTIP>/index.php
* Check phpmyadmin/mariadb is running by going to <HOSTIP>:3306 , Login Username : root , Password: password

# References
* command to restart apache "apachectl -k graceful"
