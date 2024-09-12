# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

COPY dist/StickyHR-0.0.1-SNAPSHOT.jar /app/StickyHR-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "StickyHR-0.0.1-SNAPSHOT.jar"]
