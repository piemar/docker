# FROM defines a base image (pulled from the Docker Hub).
FROM ubuntu:15.04

# RUN executes initialization commands within the container
# e.g., installing packages.
RUN apt-get update && apt-get install -y perl

# ADD copies files from the directory of the Dockerfile
# into the container at build time.
ADD ./my-app.pl /root/my-app.pl

# CMD defines the command to execute when starting the container.
# May be overriden from command-line.
CMD ["perl /root/my-app.pl"]
