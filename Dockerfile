FROM maven:3.6-jdk-11 as bygger
WORKDIR .
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM adoptopenjdk/openjdk11
COPY --from=bygger target/onlinestore-0.0.1-SNAPSHOT.jar application.jar
ENTRYPOINT ["java","-jar","application.jar"]

