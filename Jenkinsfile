pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-login') // Will be set in Jenkins
    }
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/xelliann/Fitness-Deployed.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t fitness-website .'
            }
        }
        stage('Tag Docker Image') {
            steps {
                sh 'docker tag fitness-website your-dockerhub-username/fitness-website:latest'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push your-dockerhub-username/fitness-website:latest'
            }
        }
    }
}
