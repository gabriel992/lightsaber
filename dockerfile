FROM maven:3.6.0-jdk-11-slim AS build

RUN mkdir app
WORKDIR /app
COPY pom.xml /app
RUN mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
RUN cd my-app
RUN mvn package
# ENTRYPOINT ["java", "-cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App"]

