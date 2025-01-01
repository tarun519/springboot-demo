FROM eclipse-temurin:23-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-demo.jar springboot-demo.jar
ENTRYPOINT ["java","-jar","/springboot-demo.jar"]
