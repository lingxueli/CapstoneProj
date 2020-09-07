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
                sh 'sudo docker rmi wisdompet:latest'
                sh 'sudo docker build --tag=wisdompet:latest .'
                sh 'sudo docker tag wisdompet:latest  lingxueli/wisdompet:latest'
            }
        }
        stage('upload docker image'){
            steps{
                sh 'cat ~/my_password.txt | sudo docker login --username lingxueli --password-stdin'
                sh 'sudo docker push lingxueli/wisdompet:latest'
            }
        }
        stage('upload to Kubernetes'){
            steps{
                withKubeConfig([credentialsId: 'capstone-EKS', serverUrl: 'http://ac88474ac2e8949d192044da384ff285-361351098.us-west-2.elb.amazonaws.com:8000']) {
                    sh 'kubectl apply -f kubernetes-deployment-latest.yaml'
                    sh 'kubectl apply -f kubernetes-service.yaml'
                }

            }
        }

    }
}
