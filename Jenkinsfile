pipeline {
    agent any
  stages {
    stage('Get Code') {
      steps {
        sh 'id'
        fileExists 'rastgele.py'
      }
    }
    stage('Create Docker Image') {
      steps {
        sh 'docker build -t rastgelesayi:${BUILD_NUMBER} .'
      }
    }
  }
}
