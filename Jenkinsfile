pipeline {
    agent none

    stages {
        stage('Build') {
            agent {dockerfile true}
            steps {
                echo 'Building..'
            }
        }

        stage('Test') {
            steps {
                script {
                    echo 'Testing..'
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }

    }

}
