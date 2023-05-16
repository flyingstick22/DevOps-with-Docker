## Optimization exercise

Before optmization

Backend:
````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
backend                                      latest        dc23f8eba3f9   2 hours ago     408MB
````

Frontend:
````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
frontend                                     latest        7c5759f71f68   2 hours ago     1.21GB
````


After optimization

Backend (RUN commands combined, go removed):
````
REPOSITORY                                   TAG           IMAGE ID       CREATED         SIZE
optimized_backend                            latest        d660a86dc9d9   5 seconds ago   239MB
````
Frontend (RUN commands combined and purge etc. tricks copied from course material. No impact on size):
````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
optimized_frontend                           latest        e021fce23502   23 seconds ago   1.21GB
````



