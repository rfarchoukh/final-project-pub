pipeline {
  agent any
  stages {
    stage('Deployment') {
      steps {
        git(url: 'https://github.com/rfarchoukh/final-project-pub.git', branch: 'dev', credentialsId: 'Ramzi Repository Token')
        sh '''

./deploy.sh'''
      }
    }
    stage('Testing') {
      steps {
        sh './test.sh'
      }
    }
  }
  environment {
    SERVER_IP = ''
  }
}
