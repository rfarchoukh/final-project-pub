pipeline {
  agent any
  stages {
    stage('Pull Private Repo') {
      steps {
        git(url: 'https://github.com/rfarchoukh/final-project-pub.git', branch: 'dev', credentialsId: 'Ramzi Repository Token')
        sh '''

./pull-private-repo.sh'''
      }
    }
    stage('Deploy') {
      steps {
        sh './Final-Project/deploy.sh'
      }
    }
  }
  environment {
    SERVER_IP = ''
  }
}