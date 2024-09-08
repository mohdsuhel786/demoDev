# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local machine to the container
COPY target/StickyHR-0.0.1-SNAPSHOT.jar /app/StickyHR.jar

# Expose the port your Spring Boot application will run on
EXPOSE 8080

# Set the default command to run your JAR file
CMD ["java", "-jar", "StickyHR.jar"]
