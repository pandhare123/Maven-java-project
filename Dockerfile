FROM  openjdk:latest
ADD target/shopfront-0.0.1-SNAPSHOT.jar app.jar
WORKDIR /opt
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
