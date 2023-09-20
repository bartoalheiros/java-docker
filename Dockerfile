FROM openjdk

WORKDIR /app

COPY target/java-docker-0.0.1-SNAPSHOT.jar /app/java-docker.jar

ENTRYPOINT ["java", "-jar", "java-docker.jar"]