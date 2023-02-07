FROM eclipse-temurin:17-jdk-jammy
LABEL maintainer="sumitdeo1988@gmail.com"


#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#
#RUN ./mvnw dependency:resolve
#
#COPY src ./src
#
#CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.profiles=mysql"]

EXPOSE 8080
ARG JAR=spring-petclinic-3.0.0-SNAPSHOT.jar
COPY target/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
