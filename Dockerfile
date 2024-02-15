FROM openjdk:17-ea-11-jdk-slim

ARG JAR_FILE=build/libs/config-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} configService.jar

CMD ["java", "-jar", "-Duser.timezone=Asia/Seoul", "configService.jar"]
