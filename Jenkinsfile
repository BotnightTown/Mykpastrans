pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main',
            url: 'https://github.com/BotnightTown/Mykpastrans.git'
      }
    }

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