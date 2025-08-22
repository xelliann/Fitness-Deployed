pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-login')
    }

    triggers {
        pollSCM('* * * * *') // Poll SCM every minute
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/xelliann/Fitness-Deployed.git'
            }
        }

        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Pull Docker Image') {
            steps {
                sh 'docker pull xelliann/fitness-website:latest'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                    docker rm -f fitness-container || true
                    docker run -d -p 81:80 --name fitness-container xelliann/fitness-website:latest
                '''
            }
        }
    }
}

