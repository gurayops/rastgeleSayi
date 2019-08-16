pipeline {
    agent {
        docker {
            image 'python:2'
        }
    }
  stages {
    stage('Get Code') {
      steps {
        sh 'pip install -r requirements.txt'
        fileExists 'rastgele.py'
      }
    }
    stage('Check quality') {
      steps {
        sh 'pip install xenon'
        sh 'xenon --max-absolute B --max-modules A --max-average A'
      }
    }
    stage('Generate Artifact') {
      steps {
        archiveArtifacts '*'
      }
    }
  }
}

