pipeline {
  agent {
    docker {
      image 'maven:3-jdk-8'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn package'
        stash name: "jar", includes: "target/*.jar"
      }
    }
   stage('Docker Build') {
      agent any
      steps {
        dir("jar") {
          unstash "jar"
        }
        sh "docker build -t naveen ."
      }
    }
  }
}
