```groovy
pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo "Checking out the code from SCM..."
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building the Docker image..."
                sh 'docker build -t myflaskapp:latest .'
            }
        }

        stage('Deploy with Docker Compose') {
            steps {
                echo "Deploying the application using Docker Compose..."
                sh 'docker compose up -d --build'
            }
        }
    }
}
```
