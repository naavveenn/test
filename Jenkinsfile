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
  }
  stages {
    agent any
    stage('Docker Build') {
      steps {
        dir("jar") {
          unstash "jar"
        }
        sh "ls -la ${pwd()}/jar"
        sh "docker build -t naveen ."
      }
    }
  }
}
