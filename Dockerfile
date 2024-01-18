FROM maven:3.8.6-openjdk-8 AS build
VOLUME /tmp
COPY target/*.war codec.war
ENTRYPOINT ["java","-jar","/codec.war"]
EXPOSE 8080