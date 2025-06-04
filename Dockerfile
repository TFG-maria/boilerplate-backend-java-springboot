# Stage 1: Build with Maven
FROM maven:3.9.4-eclipse-temurin-21 AS builder
WORKDIR /build
COPY pom.xml . 
# Descargar dependencias sin el código
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
# Copiar el JAR generado
COPY --from=builder /build/target/*.jar app.jar
# Variables de entorno de Spring Boot
ENV SPRING_PROFILES_ACTIVE=prod
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
