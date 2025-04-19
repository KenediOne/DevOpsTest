# Используем официальный Maven-образ с JDK 17
FROM maven:3.9.4-eclipse-temurin-17 as build

WORKDIR /app

COPY app/pom.xml .
COPY app/src ./src

# Собираем .jar файл
RUN mvn clean package -DskipTests

# Финальный образ
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
