# Adding Users

## Backend Dockerfile:
1. The base image was changed from golang --> alpine
2. group and "appuser" was created like below:
````
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
````

## Frontend Dockerfile:
1. User "Maija" was added to docker file (from exercise 1.12) like below:
````
RUN useradd -m Maija
USER Maija
````

## Building images again:

````
docker build -t backend .
docker build -t frontend .
````

## Running containers:

````
docker run --rm -d -p 8080:8080 backend
docker run --rm -d -p 5001:5000 frontend
````

## Checking users

Using inspect:
````
docker inspect $(docker ps -q) --format '{{.Config.User}} {{.Name}}'
````

or go inside containers via another terminal:

````
docker exec -it container_name bash
````

and type: 
````
whoami
````











