FROM maven:3.6.3-jdk-11 as build
copy pom.xml .
copy src src
RUN mvn clean install
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
