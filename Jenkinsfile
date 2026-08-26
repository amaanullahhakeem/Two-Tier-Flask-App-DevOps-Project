pipeline {
    agent any
    stages {
        stage('Checkout code') {
            steps {
                echo "Checking out the code from SCM..."
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building the project..."'
                // Add your build commands here
            }   sh 'docker build -t myflaskapp:latest .'
        }
        stage('Deploy with Docker-Compose') {
            steps {
                sh 'echo "Deploying the application using Docker-Compose..."'
                sh 'docker-compose up -d --build'
            }
            
        }
            
    }
}
