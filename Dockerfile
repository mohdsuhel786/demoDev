FROM openjdk:17
VOLUME /tmp
EXPOSE 8080
ADD target/stickyhr-backend-docker.jar stickyhr-backend-docker.jar
ENTRYPOINT ["java", "-jar", "/stickyhr-backend-docker.jar"]
