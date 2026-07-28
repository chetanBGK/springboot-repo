FROM maven:3.9.15-eclipse-temurin-21 AS build

WORKDIR /project

COPY . .

#RUN mvn -Djava.net.preferIPv4Stack=true clean package

RUN mvn clean package

FROM eclipse-temurin:21-jre

WORKDIR /project

COPY --from=build "/project/target/first-0.0.1-SNAPSHOT.jar" "app.jar"

CMD ["java","-jar","app.jar"]
