pipeline {
  agent any
  stages {

    stage('Stage 1') {
      steps {
        script {
          echo 'Stage 1'
          sh "sh -x  backend.sh privid tfstate us-east-1  table provider.tf"
        }
      }
    }

    stage('Stage 2') {
      steps {
        script {
          echo 'Stage 2'
          sh "cat provider.tf"
          sh "ls
          sh "terraform init"
        }
      }
    }

  }
}
