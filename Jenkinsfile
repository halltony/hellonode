pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                sh 'cat version.txt'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
