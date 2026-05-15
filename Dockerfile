FROM maven:3.9.15-eclipse-temurin-21 AS build

WORKDIR /project

COPY . .

RUN mvn package

FROM eclipse-temurin:21-jre

WORKDIR /project

COPY --from=build "/project/target/first-0.0.1-SNAPSHOT.jar" "app.jar"

CMD ["java","-jar","app.jar"]
