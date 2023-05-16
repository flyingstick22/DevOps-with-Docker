FROM alpine:3.16.0 as build-stage

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN apk add --no-cache curl nodejs npm && npm install && npm run build && npm install -g serve && apk del curl && rm -rf /var/lib/apt/lists/*



FROM node:14-alpine3.13

EXPOSE 5000

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build

RUN npm install -g serve && adduser -D Maija && chown Maija build

USER Maija

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]
