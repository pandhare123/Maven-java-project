FROM  ubuntu:latest
RUN apt-get update && apt-get upgrade -y
COPY /target/*.jar /opt/
