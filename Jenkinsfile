pipeline {
  agent any
  stages {
    stage('Dev Deployment') {
      steps {
        git(url: 'https://github.com/rfarchoukh/final-project-pub.git', branch: 'dev', credentialsId: 'Ramzi Repository Token')
        sh '''

./deploy.sh'''
      }
    }
    stage('Dev Tests') {
      steps {
        sh './deploy.sh'
      }
    }
  }
}