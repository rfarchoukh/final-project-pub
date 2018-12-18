pipeline {
  agent any
  stages {
    stage('Dev Deployment') {
      steps {
        git(url: 'git@github.com:rfarchoukh/final-project-pub.git', branch: 'dev', credentialsId: 'Ramzi Repository Token')
      }
    }
  }
}