## Optimizing by changing base image

Backend before base image optimization:
````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
optimized_backend                            latest        d660a86dc9d9   5 seconds ago   239MB
````

Frontend before base image optimization:
````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
optimized_frontend                           latest        e021fce23502   23 seconds ago   1.21GB
`````

Backend after base image optimization (alpine:latest --> alpine:3.13):
````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
optimized_backend_2                          latest        6b24c9d09a99   2 minutes ago    145MB
`````

Frontend after image optimization (node --> alpine3.13)
````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
optimized_frontend_2                         latest        4df3baa4a9c8   15 seconds ago   288MB
````
