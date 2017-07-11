pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t jenkins-alpine:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run --name jenkins-alpine jenkins-alpine:latest'
                sh 'docker rm -f petclinic-tomcat-temp || true'
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh 'docker push jenkins-alpine:latest'
            }
        }
    }
}
