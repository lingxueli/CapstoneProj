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
        stage('Update docker') {
            steps {
                sh 'sudo sh ./run_docker.sh'
                sh 'sudo sh ./upload_docker.sh'
            }
        }
    }
}
