FROM openjdk:8

# Install maven
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
       maven

# Copy build files
RUN mkdir /spring-boot-hello-world
COPY . /spring-boot-hello-world
WORKDIR /spring-boot-hello-world

# Build application
RUN  mvn clean package

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/spring-boot-hello-world-1.0-SNAPSHOT.jar"]

