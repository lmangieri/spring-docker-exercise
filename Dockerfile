# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

VOLUME /tmp

ARG JAR_FILE
ADD target/spring-docker-exercise-2.0.1-SNAPSHOT.jar app.jar

ENV JAR_OPTS=""
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $JAR_OPTS