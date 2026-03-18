pipeline {
  agent any

  stages {

    stage('Install Dependencies') {
      steps {
        dir('frontend') {
          sh 'npm install'
        }
      }
    }

    stage('Smoke Tests') {
      steps {
        dir('frontend') {
          sh 'npm test'
        }
      }
    }
  }

  post {
    success {
      echo '✅ Всі smoke тести пройшли!'
    }
    failure {
      echo '❌ Тести провалились!'
    }
  }
}