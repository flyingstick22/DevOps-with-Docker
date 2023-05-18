## Multi-stage build optimization

Frontend before (288 MB) and after (127 MB) using multi-stage optimization:
````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
optimized_frontend_3                         latest        b4c33044140b   3 minutes ago   127MB
optimized_frontend_2                         latest        4df3baa4a9c8   3 hours ago     288MB
````
Optimization was done by separating build and execution parts as follows:

Execution part:
````
FROM node:14-alpine3.13
EXPOSE 5000
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/build/ /usr/src/app/build
RUN npm install -g serve && adduser -D Maija && chown Maija build
USER Maija
ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]
````
I was trying hard to get this even smaller but after 3 h I gave up... It works but it's still quite big.

Dockerfile is saved in the build folder.
