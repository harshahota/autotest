pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }

    }
    post {
        success{
            mail body: "project success is here" ,
            subject: 'project success',
            to: 'harshahota123@gmail.com'
        }
        failure {
            mail body: "project build error is here" ,
            subject: 'project build failed',
            to: 'harshahota123@gmail.com'
        }
    }

}
