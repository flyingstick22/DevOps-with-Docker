Dockerfile

´´´´
FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:8080

COPY . .

RUN go build

CMD ./server
´´´´

Command used:

````
% docker build . -t backend && docker run -p 127.0.0.1:8080:8080 backend


