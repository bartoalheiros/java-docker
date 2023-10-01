# Atualize o sistema e instale atualizações
FROM openjdk:17-jdk-slim

# Atualize o sistema e instale atualizações
RUN apt-get update && apt-get -y upgrade

# Defina a variável de argumento JAR_FILE
ARG JAR_FILE=target/java-docker-0.0.1-SNAPSHOT.jar

# Copie o arquivo JAR para o contêiner com o nome "app.jar"
COPY ${JAR_FILE} app.jar
#COPY target/java-docker-0.0.1-SNAPSHOT.jar /app.jar

# Crie um arquivo de marca para o JAR
RUN bash -c 'touch /app.jar'

# Configure o comando de entrada do contêiner
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/.urandom","-jar","/app.jar"]

