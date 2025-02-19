# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/fulldemo-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port (change if needed)
EXPOSE 8080

# Run the application with the 'docker' profile
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "app.jar"]
