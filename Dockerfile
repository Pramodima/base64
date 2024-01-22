FROM maven:3.8.6-openjdk-8 AS build
VOLUME /tmp
COPY target/*.war base64.war
ENTRYPOINT ["java","-jar","/base64.war"]
EXPOSE 8080