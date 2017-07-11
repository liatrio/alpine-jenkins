pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -f alpine/Dockerfile . -t jenkins-alpine:latest .'
            }
        }
        stage('Run') {
            sh 'docker run -name jenkins-alpine jenkins-alpine:latest'
            sh 'docker rm -f petclinic-tomcat-temp || true'
        }
        stage('Push to dockerhub') {
            sh 'docker push jenkins-alpine:latest'
        }
    }
}
