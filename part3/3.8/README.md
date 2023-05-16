## Multi-stage build optimization

Frontend before (288 MB) and after (6.57 MB) using multi-stage optimization:
````
RREPOSITORY                                   TAG           IMAGE ID       CREATED              SIZE

````
Optimization was done by separating build and execution parts as follows:

Execution part:
````

````

Dockerfile is saved in the build folder.
