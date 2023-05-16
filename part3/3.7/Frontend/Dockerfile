FROM alpine:3.13

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN apk add --no-cache nodejs npm && npm install && npm run build && npm install -g serve && adduser -D Maija && rm -rf /var/lib/apt/lists/*

USER Maija

CMD  ["serve", "-s", "-l", "5000", "build"]
