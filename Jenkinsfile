pipeline {
    agent any

    environment {
        NODE_VERSION = '18' // Node.js version reference (optional)
    }

    triggers {
        // Run every 1 minute
        cron('H/1 * * * *')
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Debasish-87/Jenkins-Pipeline-or-CI-CD.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'node -v'
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build || echo "No build script defined"'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: '**/build/**', allowEmptyArchive: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }

        success {
            echo 'Pipeline succeeded!'
        }

        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}
