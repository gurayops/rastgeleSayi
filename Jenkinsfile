pipeline {
  stages {
    stage('Get Code') {
      steps {
        sh 'id'
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

