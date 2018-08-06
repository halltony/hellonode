pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                sh 'cat version.txt'
                echo "${BRANCH_NAME}"
            }
        }
    }
}
