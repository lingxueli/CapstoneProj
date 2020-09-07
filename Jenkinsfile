pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'make setup'
                sh 'make install'
            }
        }
        stage('Lint Python') {
            steps {
                sh 'make lint'
            }
        }
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('build docker image'){
            steps{
                sh 'sudo docker build --tag=wisdompet:latest .'
                sh 'sudo docker tag wisdompet:latest  lingxueli/wisdompet:latest'
                sh 'sudo docker push lingxueli/wisdompet'
            }
        }
        stage('upload to Kubernetes'){
            steps{
                sh 'kubectl apply -f kubernetes-deployment-latest.yaml'
                sh 'kubectl apply -f kubernetes-service.yaml'
            }
        }
    }
}
