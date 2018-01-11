pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t liatrio/jenkins-alpine:2.101 .'
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh 'docker push liatrio/jenkins-alpine:2.101'
            }
        }
    }
}
