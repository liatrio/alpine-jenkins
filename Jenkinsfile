pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t liatrio/jenkins-alpine:lts .'
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh 'docker push liatrio/jenkins-alpine:lts'
            }
        }
    }
}
