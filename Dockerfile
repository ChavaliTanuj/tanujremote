# Step 1: Use lightweight base image for application runtime
FROM amazoncorretto:17-alpine

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy build artifact (JAR file) from target directory
COPY target/*.jar app.jar

# Step 4: Expose application port
EXPOSE 8080

# Step 5: Define startup command
ENTRYPOINT ["java", "-jar", "app.jar"]
