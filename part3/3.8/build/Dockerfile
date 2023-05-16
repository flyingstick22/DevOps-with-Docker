FROM alpine:3.13 as build-stage

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN apk add --no-cache nodejs npm && npm install && npm run build && npm install -g serve && rm -rf /var/lib/apt/lists/*

FROM alpine:3.13

COPY --from=build-stage /usr/src/app/build/ /usr/src/app

RUN adduser -D Maija

USER Maija

CMD  ["serve", "-s", "-l", "5000", "build"]
