FROM alpine:latest

WORKDIR /usr/src/app

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:8080

COPY . .

RUN apk add --no-cache go && go build && addgroup -S appgroup && adduser -S appuser -G appgroup && apk del go

USER appuser

CMD ./server
