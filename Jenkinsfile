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
        sh './Final-Project/validation/validate_local_html.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh './Final-Project/deploy.sh'
      }
    }
    stage('Destroy Instances') {
      steps {
        sh './Final-Project/destroy-stack.sh'
      }
    }
  }
  environment {
    SERVER_IP = ''
  }
}