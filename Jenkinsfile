pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/YOUR_USERNAME/fitness-website-devops.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t fitness-website .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 fitness-website'
            }
        }
    }
}
