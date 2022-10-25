pipeline {
    agent any

    stages {
        stage('Pre-build stg') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target pre-build .'
            }
        }
        stage('Build') {
            steps {
              sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target build .'
            }
        }
        stage('Test') {
            steps {
                 sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target test .'
            }
        }
        stage('Security') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target security .'
            }
        }
        stage('Back-end') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target back-end .'
            }
        }
        stage('Front-end') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target front-end .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target deploy .'
            }
        }
        stage('Post') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t stav:latest --target post .'
            }
        }
    }
}
