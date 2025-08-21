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
