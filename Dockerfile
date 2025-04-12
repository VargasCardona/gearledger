# Stage 1: Build the JAR file
FROM gradle:7.4-jdk17 AS build

WORKDIR /app
COPY . .
RUN gradle build --no-daemon

# Stage 2: Run the Spring Boot application
FROM openjdk:17-jdk-slim

WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar

EXPOSE 9000
ENTRYPOINT ["java", "-jar", "app.jar"]
