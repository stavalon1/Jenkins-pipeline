pipeline {
    agent any
    
       stages {
        stage('initws') {
            steps {
                // clean workspace before init
                cleanWs()
            }
        }
           stage('gitinit') {
            steps {
                echo 'clone the repo from SCM'
            }
        }
           stage('build') {
            steps {
                // run build
                nodejs('nodejs18') {
                sh "npm install"
        }
            }
        }
        
        stage('testing') {
              agent {
                docker { image 'sonar cube' }
            }
            steps {
                sh 'running test'
                sh 'npm test'
            }
        }
           
        stage('integrationTest') {
            agent {
                docker { image 'maven:3.8.1-adoptopenjdk-11' }
            }
            steps {
                echo "check the server into aws"
            }
        }
        stage('deploy') {
           steps {
                // start the app 
                nodejs('nodejs18') {
                sh "npm run start"
                echo "Deploying success..."
        }
            }
                }
          
        
       }
    }
