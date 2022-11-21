FROM  ubuntu:latest
RUN apt-get update && apt-get upgrade -y
COPY /target/*.jar /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
