# My Java Spring Boot Application

This is a simple Java Spring Boot web application that responds with "Hello from Spring Boot!" when accessed.

## Prerequisites

To build and run this application, you need to have the following installed:

- Java JDK 11 or higher
- Maven (if building with Maven)
- Docker (if building with Docker)

## Building and Running with Maven

### Build

To build the application, run the following command in the root directory of the project:

```bash
mvn clean install
```

This command compiles the application and generates a JAR file in the `target` directory.

### Run

To run the built application, execute:
```bash
java -jar target/my-java-app-1.0.0.jar
```


The application will start and be accessible on `http://localhost:8080`.

## Building and Running with Docker

### Build Docker Image

To build the Docker image, run:
```bash
docker build -t my-java-app .
```


This command creates a Docker image named `my-java-app`.

### Run Docker Container

To run the application in a Docker container, use:

```bash
docker run -p 8080:8080 my-java-app
```

This command runs the Docker container and maps port 8080 of the container to port 8080 on the host machine.

## Accessing the Application
After starting the application (either through Java or Docker), open a web browser and go to:

```bash
http://localhost:8080
```

You should see a message saying "Hello from Spring Boot!".
