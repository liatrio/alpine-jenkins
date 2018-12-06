pipeline {
    agent any
    environment {
        IMAGE='liatrio/jenkins-alpine'
        TAG='latest'
    }
    stages {
        stage('Build') {
            steps {
                sh "docker build --pull -t ${IMAGE}:${TAG} ."
            }
        }
        stage('Push to dockerhub') {
            steps {
                sh "docker push ${IMAGE}:${TAG}"
            }
        }
    }
}
