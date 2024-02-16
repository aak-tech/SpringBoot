FROM openjdk-17
WORKDIR /app
COPY target/employee-springboot-demo-1.0.jar /app/app.jar
EXPOSE 8080
CMD ["java","-jar","app.jar"]
