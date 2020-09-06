pipeline {
     agent any
     stages {
        stage('Build') {
            steps {
                sh 'make setup'
                sh 'make install'
                sh 'sudo sh .\run_docker.sh'
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
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
        stage('Security Scan') {
            steps {
                aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
            }
        }
     }
}
