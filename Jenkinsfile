pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
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
        // your other stages here
    }
}
