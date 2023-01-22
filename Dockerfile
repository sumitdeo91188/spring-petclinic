FROM eclipse-temurin:17-jdk-jammy
LABEL maintainer="sumitdeo1988@gmail.com"
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.profiles=mysql"]
