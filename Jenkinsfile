pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo \'find and expire docker services\''
        echo 'find and expire docker services from docker compose'
      }
    }
    stage('test') {
      steps {
        sh 'echo \'write a test\''
      }
    }
    stage('Deliver') {
      steps {
        sh './script/deploy'
        input '"proceed" to continue'
      }
    }
  }
}