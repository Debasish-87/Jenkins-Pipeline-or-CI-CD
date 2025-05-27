pipeline {
    agent any

    environment {
        // Define Docker image name
        IMAGE_NAME = "debasishexample/simple-node-app"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from your GitHub repo
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/Debasish-87/Jenkins-Pipeline-or-CI-CD.git',
                        credentialsId: '8f69f519-cf9e-4285-a21f-b0b250279c22'
                    ]]
                ])
            }
        }

        stage('Build') {
            steps {
                echo "Building the Docker image..."
                script {
                    // Build Docker image
                    docker.build(IMAGE_NAME)
                }
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                // Assuming you have npm tests (adjust if needed)
                sh 'npm install'
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying the application..."
                script {
                    docker.withRegistry('', 'dockerhub-credentials-id') {
                        // Push Docker image to Docker Hub (use your DockerHub credentials in Jenkins)
                        docker.image(IMAGE_NAME).push()
                    }
                }
            }
        }
    }

    post {
        always {
            echo "Cleaning up workspace..."
            cleanWs()
        }
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed. Check logs!"
        }
    }
}
