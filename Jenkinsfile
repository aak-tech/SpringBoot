pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your-spring-boot-app:latest"
        CONTAINER_NAME = "spring-boot-container"
    }

    stages {
        stage('Checkout') {
            steps {
                // This stage checks out your source code from version control
                checkout scm
            }
        }

        stage('Build Spring Boot Application') {
            steps {
                // Build your Spring Boot application
                script {
                    sh "./mvnw clean install" // Adjust the build command as needed
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build and push your Docker image
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run your Docker container
                script {
                    sh "docker run --name ${CONTAINER_NAME} -d -p 8080:8080 ${DOCKER_IMAGE}"
                }
            }
        }
    }
}
