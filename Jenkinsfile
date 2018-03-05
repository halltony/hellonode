pipeline {
    agent none 
    stages {
        stage('Example Build') {
            agent 
            node {
                label 'rhel'
                 }   
            steps {
                echo 'Hello, Maven'
                sh 'pwd'
            }
        }
    }
}
