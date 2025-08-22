pipeline {
    agent any

    environment {
        DOCKER_CREDS = credentials('dockerhub-login')
        ENV_CONTENT = credentials('fitness-env-file') // Entire .env file as secret text
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/xelliann/Fitness-Deployed.git'
            }
        }

        stage('Create .env File') {
            steps {
                sh '''
                    echo "$ENV_CONTENT" > includes/.env
                '''
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

        stage('Deploy Container') {
            steps {
                sh '''
                    docker rm -f fitness-container || true
                    docker run -d -p 81:80 --name fitness-container \
                        -v $PWD/includes/.env:/var/www/html/includes/.env \
                        xelliann/fitness-website:latest
                '''
            }
        }
    }
}
