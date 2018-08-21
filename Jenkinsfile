node {
    stages {

        stage('Git') {
            checkout scm
        }

        stage('Build') {
            steps {
                echo 'Building..'
                docker build -t "sampleapp" .
            }
        }

        stage('Test') {
            steps {
                script {
                    echo 'Testing..'
                    docker run -d --name sample sampleapp
                    docker exec -d sample npm run test
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
