pipeline {
    agent {
      docker {
          image 'python:2'
          args '-u root'
      }
    }
  stages {
    stage('Get Code') {
      steps {
        sh 'id'
        sh 'pip install --user -r requirements.txt'
        fileExists 'rastgele.py'
      }
    }
    stage('Check quality') {
      steps {
        sh 'pip install --user xenon'
      }
    }
    stage('Create Docker Image') {
      steps {
        sh 'docker build -t rastgelesayi:${BUILD_NUMBER} .'
      }
    }
  }
}
