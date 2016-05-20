# FROM defines a base image (pulled from the Docker Hub).
FROM ubuntu:15.04

# RUN executes initialization commands within the container
# e.g., installing packages.
RUN apt-get update && apt-get install -y perl


