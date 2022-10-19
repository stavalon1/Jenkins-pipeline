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
                git branch: 'main', url: 'https://github.com/Elad0109/simple-webapp-nodejs-.git'
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
            steps {
                // run testing
                nodejs('nodejs') {
                sh "npm run test"
                echo "Testing success..."
        }
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
