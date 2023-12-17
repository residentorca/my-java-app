# Create the final image
FROM docker.io/library/openjdk:11-jre-slim

# Copy the compiled jar from the builder stage
COPY target/*.jar /usr/app/app.jar

# Set the working directory
WORKDIR /usr/app

# Command to run the application
CMD ["java", "-jar", "app.jar"]

