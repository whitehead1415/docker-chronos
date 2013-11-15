docker-chronos
================

[Mesos](http://mesos.apache.org/)

[Chronos](https://github.com/airbnb/chronos)

Builds a docker image for Chronos.

    Build chronos docker image

```
$ sudo docker build  -t <your username>/chronos .
```
    
    Run docker image
  
```
$ sudo docker run -d -p 8080:8080 <your username>/chronos
```

##MORE

To setup the docker container with it's own ip address and inet interface then 
read [this](article http://blog.codeaholics.org/2013/giving-dockerlxc-containers-a-routable-ip-address/)

That way you can easily connect mesos slaves to this container.

    
