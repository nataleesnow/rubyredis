pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'echo \'find and expire docker services\''
        echo 'find and expire docker services from docker compose'
        sh 'docker-compose down'
      }
    }
  }
}