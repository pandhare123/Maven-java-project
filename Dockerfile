FROM  openjdk:latest
RUN apt-get update && apt-get upgrade -y
COPY /target/*.jar /opt/
WORKDIR /opt
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
