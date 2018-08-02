pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout..'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '3703f75d-3e21-475a-ac23-38c35e23ef08', url: 'https://github.com/damoando4/Jenkins']]])
            }
        }
        stage('Show version') {
            steps {
                cat version.txt
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
