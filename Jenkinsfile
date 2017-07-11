pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t liatrio/jenkins-alpine:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker rm -f jenkins-alpine || true'
                sh 'docker run --name jenkins-alpine liatrio/jenkins-alpine:latest'
                sh 'docker rm -f jenkins-alpine || true'
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh 'docker push jenkins-alpine:latest'
            }
        }
    }
}
