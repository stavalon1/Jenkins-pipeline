pipeline {
    agent any

    stages {
        stage('Checkout From SCM') {
            steps {
                echo 'Checkout from SCM..'
                //checkout ...
            }
        }
        stage('Pre-build stg') {
            steps {
                echo 'prebuild actions..'
            }
        }
        stage('Build') {
            steps {
              echo 'docker build --target Build'
            }
        }
        stage('Test') {
            steps {
                echo 'docker build --target test'
            }
        }
        stage('security') {
            steps {
                sh 'echo this is security'
            }
        }
        stage('Back-end') {
            steps {
                echo 'mvn --version'
            }
        }
        stage('Front-end') {
         
            steps {
                echo 'node --version'
            }
        }
        stage('Deploy') {
        
            steps {
                echo 's3 cp src dst'
            }
        }
       stage ('Post') {
           steps{
        echo "clear env"
           }
      }
      
    }
}
