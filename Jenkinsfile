pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull the latest code
                git branch: 'main', url: 'https://github.com/YourUsername/YourRepo.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t my-app:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Example: run a script or test command
                sh 'echo "Tests passed!"'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying app...'
                // Example: run the docker container (modify as needed)
                sh 'docker run -d -p 3000:3000 my-app:latest'
            }
        }
    }
}
