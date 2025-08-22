pipeline {
    agent any

    environment {
        DOCKER_CREDS = credentials('dockerhub-login')
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/xelliann/Fitness-Deployed.git'
            }
        }

        stage('Create .env File') {
            steps {
                withCredentials([file(credentialsId: 'fitness-env-file', variable: 'ENV_FILE')]) {
                    sh 'cp $ENV_FILE includes/.env'
                }
            }
        }

        stage('Docker Login') {
            steps {
                sh 'echo $DOCKER_CREDS_PSW | docker login -u $DOCKER_CREDS_USR --password-stdin'
            }
        }

        stage('Pull Docker Image') {
            steps {
                sh 'docker pull xelliann/fitness-website:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                    kubectl apply -f K8S/deployment.yml
                    kubectl apply -f K8S/service.yml
                '''
            }
        }
    }
}
