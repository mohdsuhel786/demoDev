# Build stage
FROM maven:3.8.5-openjdk-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=builder /app/target/StickyHR-0.0.1-SNAPSHOT.jar hrms.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/hrms.jar", "--server.port=${PORT}"]


# Define environment variables
ENV SPRING_DATASOURCE_URL=jdbc:mysql://avnadmin:AVNS_5h83zuq2F-ympF6O_Iq@mysql-iamsmur-hrms.e.aivencloud.com:18120/defaultdb?ssl-mode=REQUIRED
ENV SPRING_DATASOURCE_USERNAME=avnadmin
ENV SPRING_DATASOURCE_PASSWORD=AVNS_5h83zuq2F-ympF6O_Iq
ENV JWT_SECRET_KEY=404E635266556A586E3272357538782F413F4428472B4B6250645367566B5970
ENV SPRING_MAIL_USERNAME=zstars0786@gmail.com
ENV SPRING_MAIL_PASSWORD="uvgd huue yczg ygwu"
ENV REDIS_PORT=6379
ENV REDIS_HOST=localhost