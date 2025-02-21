# Use the official Azul Zulu OpenJDK 17 image as the base image
FROM azul/zulu-openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file to the container
COPY target/*.jar TestworkflowService-1.0.0.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "TestworkflowService-1.0.0.jar"]