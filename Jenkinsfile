pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(
          url: 'https://github.com/Debasish-87/Jenkins-Pipeline-or-CI-CD.git',
          credentialsId: 'github-pat'
        )
      }
    }
    // other stages...
  }
}
