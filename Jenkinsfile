pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'myapp:latest'
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_REPO = 'your-dockerhub-username/myapp'
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Run Tests') {
    steps {
        echo 'Running tests...'
        sh "docker run --rm myapp:latest ./run-tests.sh"

            }

        } 
        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image to Docker Hub...'
                sh """
                docker login -u your-dockerhub-username -p your-dockerhub-password ${DOCKER_REGISTRY}
                docker tag ${DOCKER_IMAGE} ${DOCKER_REPO}:latest
                docker push ${DOCKER_REPO}:latest
                """
            }
        }

        stage('Deploy Application') {
            steps {
                echo 'Deploying application...'
                // Add deployment commands here, e.g., using Kubernetes or Docker Compose
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed!'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

