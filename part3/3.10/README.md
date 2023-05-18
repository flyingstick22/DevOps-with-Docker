## Optimize Image

Image from exercise 1.7 was optimized

Image sizes before (112 MB) and after (12.2 MB) optimization

````
REPOSITORY                                   TAG           IMAGE ID       CREATED          SIZE
after_optimization                           latest        9daa837a9192   6 minutes ago    12.2MB
before_optimization                          latest        e24740957dc5   23 minutes ago   112MB
````
What was done:

1. Ubuntu base image was changed to alpine
2. RUN commands were combined

Both Dockerfiles can be found from the exercise folder 3.10
