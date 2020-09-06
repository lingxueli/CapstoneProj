pipeline {
     agent any
     stages {
         stage('Lint Python') {
             steps {
                 pylint --disable=R,C manage.py
             }
         }
         stage('Lint HTML') {
              steps {
                  sh 'tidy -q -e *.html'
              }
         }
         stage('Test') {
              steps {
                  nosetests --verbosity=2 $(PWD)
              }
         }
         stage('Security Scan') {
              steps {
                 aquaMicroscanner imageName: 'alpine:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
              }
         }

     }
}
