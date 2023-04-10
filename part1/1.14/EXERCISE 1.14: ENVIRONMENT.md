Frontend Dockerfile

````
FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost:8080


COPY . .

RUN npm install
RUN npm run build
RUN npm install -g serve

CMD  ["serve", "-s", "-l", "5000", "build"]

````

Backend Dockerfile

````
FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:5001

COPY . .

RUN go build

CMD ./server

````

Frontend command

````
% docker build . -t frontend && docker run -p 5001:5000 frontend
````

Backend command
````
% docker build . -t backend && docker run -p 8080:8080 backend
````


