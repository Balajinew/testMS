FROM maven:3.6.0-jdk-8 as build
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
RUN mvn clean install
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
