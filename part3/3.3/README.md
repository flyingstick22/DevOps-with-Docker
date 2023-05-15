## Building images inside of a container

The script takes Github and Dockerhub repos' as parameters, creates a Docker image from GitHub repo and push the image then to the Dockerhub.

````./build.sh flyingstick22/express-app flyingstickdevops/express-app````

Before running the script you have to modify execution rights by ````chmod -x build.sh ./build.sh````

and login to docker hub.

