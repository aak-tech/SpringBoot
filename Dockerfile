FROM openjdk:17-jre-slim
WORKDIR /app
COPY target/employee-springboot-demo-1.0.jar /app/app.jar
EXPOSE 8080
CMD ["java","-jar","app.jar"]
