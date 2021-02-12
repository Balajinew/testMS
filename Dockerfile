FROM maven:3.6.0-jdk-8 as build
RUN mvn clean install
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
