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
    }
}
