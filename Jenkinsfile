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
        sh './test.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh './Final-Project/deploy.sh'
      }
    }
    stage('Health Checks/Validation') {
      steps {
        sh './test.sh'
      }
    }
    stage('Destroy Instances') {
      steps {
        sh './test.sh'
      }
    }
  }
  environment {
    SERVER_IP = ''
  }
}