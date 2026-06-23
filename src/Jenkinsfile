pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building branch: ${env.BRANCH_NAME}"
            }
        }

        stage('Deploy master') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying to master"
            }
        }

        stage('Deploy Prod') {
            when {
                branch 'main'
            }
            steps {
                echo "Deploying to PROD"
            }
        }
    }
}
