pipeline {
    agent {dockerfile true}

    stages {
        stage('Build') {
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
