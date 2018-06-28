pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t liatrio/jenkins-alpine:2.lts .'
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh 'docker push liatrio/jenkins-alpine:2.lts'
            }
        }
    }
}
