FROM alpine:latest

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh && apk --no-cache add curl

CMD ./script.sh
