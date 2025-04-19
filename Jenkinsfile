pipeline {
    agent any

    tools {
        maven 'Maven 3.8.1'  // Установи через Jenkins Tools
    }

    environment {
        DOCKER_IMAGE = 'java-devops-app'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://your-repo-url/devops-test-task.git'
            }
        }

        stage('Build JAR') {
            steps {
                dir('app') {
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker-compose down && docker-compose up -d --build'
            }
        }

        stage('Test') {
            steps {
                sh 'curl --fail http://localhost:8080/health'
            }
        }
    }
}
