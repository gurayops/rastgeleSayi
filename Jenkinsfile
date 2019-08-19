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
    stage('Test speed') {
      steps {
        sh 'docker run -d --rm --name toberemoved --network test rastgelesayi:${BUILD_NUMBER}'
        sh 'docker run --rm --network test guray/httping:0.1 -c 10 http://toberemoved'
        sh 'docker rm -f toberemoved'
      }
    }   

    stage('Deploy to prod') {
      steps {
        sh 'docker service update --image rastgelesayi:${BUILD_NUMBER} torm'
      }
    }
  }
}
