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
    stage('Code Tests') {
      steps {
        sh './Final-Project/placeholder.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh './Final-Project/deploy.sh'
      }
    }
    stage('Validation') {
      steps {
        sh './Final-Project/placeholder.sh'
      }
    }
    stage('Destroy Instances') {
      steps {
        sh './Final-Project/placeholder.sh'
      }
    }
  }
  environment {
    SERVER_IP = ''
  }
}