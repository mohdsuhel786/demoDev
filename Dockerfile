# Step 1: Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the JAR file into the container
COPY StickyHR-0.0.1-SNAPSHOT.jar /app/StickyHR-0.0.1-SNAPSHOT.jar

# Step 4: Expose the port your Spring Boot app runs on
EXPOSE 8080

# Step 5: Define the command to run your app
ENTRYPOINT ["java", "-jar", "StickyHR-0.0.1-SNAPSHOT.jar"]

