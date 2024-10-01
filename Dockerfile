# Use the official OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot jar file into the container
COPY target/simple-web-app-1.0-SNAPSHOT.jar /app/spring-boot-app.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/spring-boot-app.jar"]
