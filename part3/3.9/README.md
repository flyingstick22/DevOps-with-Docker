## Third Image Optimization

Before third optimization

````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
optimized_backend_2                          latest        6b24c9d09a99   45 hours ago    145MB
````

After third optimization
````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
optimized_backend_3                          latest        ae23fcd39678   52 seconds ago   18.8MB
````

What was done:

1. ````ENV CGO_ENABLED=0```` was added to builder image

and scratch image looks as follows:

````
FROM scratch
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/server /usr/src/app/
COPY --from=builder /etc/passwd /etc/passwd
EXPOSE 8080
USER appuser
ENTRYPOINT [ "./server" ]
````
Dockerfile saved in the exercise folder.






