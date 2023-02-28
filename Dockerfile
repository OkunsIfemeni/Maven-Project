# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the executable JAR file from the target directory into the container at /app
COPY target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar /app/my-application.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file when the container launches
CMD ["java", "-jar", "/app/my-application.jar"]
