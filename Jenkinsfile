pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                sh 'cat version.txt'
                echo ${env.BRANCH_NAME}
            }
        }
        stage('Deploy') {
            steps {
            }
        }
    }
}
