pipeline {
    agent { 
        node {
            label 'docker-agent-alpine'
            }
      }
    triggers {
        pollSCM '*/2 * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                chmod +x say-hi.sh
                echo "doing build stuff ..."
                '''
            }
        }
        stage('Test') {
            steps {
                sh '''
                ./say-hi.sh
                echo "doing test stuff ..."
                '''
            }
        }
        stage('Deliver') {
            steps {
                sh '''
                echo "doing delivery stuff ..."
                '''
            }
        }
    }
}
