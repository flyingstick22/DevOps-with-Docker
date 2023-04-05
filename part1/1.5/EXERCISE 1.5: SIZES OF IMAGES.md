Image sizes:
````
~ % docker image ls
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago   15.7MB
````
Secret message:
````
~ % docker exec -it charming_elion sh
/usr/src/app # tail -f ./text.log
2023-04-05 17:16:00 +0000 UTC
2023-04-05 17:16:02 +0000 UTC
2023-04-05 17:16:04 +0000 UTC
2023-04-05 17:16:06 +0000 UTC
2023-04-05 17:16:08 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-04-05 17:16:10 +0000 UTC
2023-04-05 17:16:12 +0000 UTC
2023-04-05 17:16:14 +0000 UTC
2023-04-05 17:16:16 +0000 UTC
2023-04-05 17:16:18 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
````
