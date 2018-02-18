node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("halltony/hellonode")
    }

    stage('Test image') {
        /* Start up the image and run a basic script to test the app */
        app.run("-it -p 8000:8000")
        sh 'sh test.sh'
        app.stop
    }
    stage('CLI workaround') {
      /* Workaround to address issue with credentials stored in Jenkins not
       * being passed correctly to the docker registry
       * - ref https://issues.jenkins-ci.org/browse/JENKINS-38018 */
       withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'docker-hub-credentials',
          usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {
          sh 'docker login -u $USERNAME -p $PASSWORD https://index.docker.io/v1/'
          }
      }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
         docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
         }
    }
}
