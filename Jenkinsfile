pipeline {
  agent any
  stages {
    stage('Deployment') {
      steps {
        git(url: 'https://github.com/rfarchoukh/final-project-pub.git', branch: 'dev', credentialsId: 'Ramzi Repository Token')
        git(branch: 'master', credentialsId: 'Ramzi-Private-Repo-Key', url: 'https://code.harvard.edu/raf375/Final-Project.git')
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