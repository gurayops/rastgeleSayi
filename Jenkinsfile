pipeline {
  agent any
  stages {
    stage('Get Code') {
      steps {
        sh '''ls -la

cat requirements.txt'''
        fileExists 'main.py'
      }
    }
    stage('Generate Artifact') {
      steps {
        archiveArtifacts '*'
      }
    }
  }
}