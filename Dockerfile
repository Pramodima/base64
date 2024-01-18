FROM maven:3.8.6-openjdk-8 AS build
VOLUME /tmp
COPY target/*.jar codec.jar
ENTRYPOINT ["java","-jar","/codec.war"]
EXPOSE 8080