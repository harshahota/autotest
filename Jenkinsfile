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
                    try{
                        sh 'npm run test'
                        echo 'success'
                    }
                    catch(Exception e){
                        echo 'Failed'
                        echo e
                    }
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
