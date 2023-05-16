## Multi-stage build optimization

Frontend before (288 MB) and after (6.57 MB) using multi-stage optimization:
````
RREPOSITORY                                   TAG           IMAGE ID       CREATED              SIZE
optimized_frontend_3                         latest        84c5bac00774   About a minute ago   6.57MB
optimized_frontend_2                         latest        4df3baa4a9c8   41 minutes ago       288MB
````
Optimization was done by separating build and execution parts as follows:

Execution part:
````
FROM alpine:3.13
COPY --from=build-stage /usr/src/app/build/ /usr/src/app
RUN adduser -D Maija
USER Maija
CMD  ["serve", "-s", "-l", "5000", "build"]
````

Dockerfile is saved in the build folder.
