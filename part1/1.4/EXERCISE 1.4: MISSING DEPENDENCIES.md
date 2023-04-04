Starting the container:
````
~ % docker run -it --name exercise  ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done' 
````
In second terminal:
````
~ % docker exec -it exercise bash
````
Installing updates via second terminal:
````
root@d7caacc8802b:/# apt-get update
root@d7caacc8802b:/# apt install curl
````
