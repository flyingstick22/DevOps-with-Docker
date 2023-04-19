Because Nginx is handling redirection, I modified Dockerfiles as follows:  

Frontend Dockerfile:
````ENV REACT_APP_BACKEND_URL=http://localhost:8080 --> ENV REACT_APP_BACKEND_URL=http://localhost/api````

Backend Dockerfile:
````ENV REQUEST_ORIGIN=http://localhost:5001 --> ENV REQUEST_ORIGIN=http://localhost````

I deleted old front- and backend-images & old volumes:

````docker volume prune```` and then yes

````docker image rm frontend, backend````

and added build commands to docker-compose.yml 

````build: ./example-frontend````

````build: ./example-backend````

and the run:

````docker compose up````

seems to work...
