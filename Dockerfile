# Stage 1: Build the application
FROM maven:3.8-openjdk-11 as builder

# Copy the project files to the container
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Compile and package the application
RUN mvn clean package

# Stage 2: Create the final image
FROM openjdk:11-jre-slim

# Copy the compiled jar from the builder stage
COPY --from=builder /usr/src/app/target/*.jar /usr/app/app.jar

# Set the working directory
WORKDIR /usr/app

# Command to run the application
CMD ["java", "-jar", "app.jar"]
