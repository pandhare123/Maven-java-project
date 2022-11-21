FROM  openjdk:latest
COPY /target/*.jar /opt/
WORKDIR /opt
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
