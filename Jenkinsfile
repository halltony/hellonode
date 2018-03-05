pipeline {
    agent none 
    stages {
        stage('shell command') {
            agent { 
                node {
                    label 'rhel'
                }       
            }
            steps {
                sh 'pwd'
            }
        }
    }
}
