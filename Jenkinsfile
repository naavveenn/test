pipeline {
  agent {
    docker {
      image 'maven:3-jdk-5'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn package'
      }
    }
  }
}