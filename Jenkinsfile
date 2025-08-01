pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-login') // Jenkins credential ID for Docker Hub
    }

    stages {
        stage('Clone Repo') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'github-token', usernameVariable: 'GIT_USER', passwordVariable: 'GIT_PASS')]) {
                        git branch: 'main', url: "https://${GIT_USER}:${GIT_PASS}@github.com/xelliann/Fitness-Deployed.git"
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t fitness-website .'
            }
        }

        stage('Tag Docker Image') {
            steps {
                sh 'docker tag fitness-website xelliann/fitness-website:latest'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push xelliann/fitness-website:latest'
            }
        }
    }
}
