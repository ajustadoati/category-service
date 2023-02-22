FROM maven:3.8.4-openjdk-17 AS build
ARG MY_WORKDIR=/usr/src/category
COPY . "$MY_WORKDIR"
WORKDIR "$MY_WORKDIR"
RUN mvn clean package -DskipTests

FROM openjdk:17.0-jre-slim
ARG MY_WORKDIR=/usr/src/category
COPY --from=build "$MY_WORKDIR/target/category-0.0.1-SNAPSHOT.jar" "/"
ENTRYPOINT ["java","-jar","/category-0.0.1-SNAPSHOT.jar"]

