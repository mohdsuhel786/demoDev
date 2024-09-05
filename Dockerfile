# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from your local machine to the container
COPY StickyHR-0.0.1-SNAPSHOT.jar /app/StickyHR-0.0.1-SNAPSHOT.jar

# Expose port 8080 to the outside world (adjust if your app runs on a different port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "StickyHR-0.0.1-SNAPSHOT.jar"]
