````

# Start Ubuntu version 20:04
FROM ubuntu:20.04

# Use /usr/src/app as a workdir
WORKDIR /usr/src/app

# Copy the script.sh file add permission rights to run the script
COPY script.sh .
RUN chmod +x script.sh

# Execute an update and install curl (-y flag is needed to proceed with installation when prompting "Do you want to continue" )
RUN apt update
RUN apt install curl -y

# When running docker run the command will be ./script.sh
CMD ./script.sh

````
