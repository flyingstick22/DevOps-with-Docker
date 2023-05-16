FROM alpine:latest

WORKDIR /usr/src/app

EXPOSE 8080

RUN apk add --no-cache go

ENV REQUEST_ORIGIN=http://localhost:8080

COPY . .

RUN go build

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

CMD ./server
