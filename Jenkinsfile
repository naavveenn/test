pipeline {
  agent any
  stages {
    stage('Build') {
        agent {
         docker {
           image 'maven:3-jdk-8'
         }
        }
      steps {
        sh 'mvn package'
        stash name: "jar", includes: "target/*.jar"
      }
    }
   stage('Docker Build') {
      steps {
        dir("jar") {
          unstash "jar"
        }
        sh "docker build -t naveen ."
      }
    }
  }
}
