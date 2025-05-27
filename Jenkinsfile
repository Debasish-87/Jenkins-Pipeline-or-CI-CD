pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pull code from GitHub
                git 'https://github.com/yourusername/your-repo.git'
            }
        }
        stage('Build') {
            steps {
                // Build Docker image
                sh 'docker build -t myapp:latest .'
            }
        }
        stage('Test') {
            steps {
                // Run your app's tests (if you have any)
                // For example: npm test
                sh 'npm install'
                sh 'npm test || echo "No tests found or tests failed"'
            }
        }
        stage('Deploy') {
            steps {
                // Stop and remove existing container if any
                sh '''
                docker stop myapp-container || true
                docker rm myapp-container || true
                '''
                // Run container
                sh 'docker run -d -p 3000:3000 --name myapp-container myapp:latest'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
