FROM maven:3.6.3-jdk-11 as build
copy pom.xml .
copy src src
RUN mvn clean install
ARG JAR_FILE=/target/*.jar
COPY /root/.m2/repository/com/gcp/learning/testMS/0.0.1-SNAPSHOT/testMS-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
