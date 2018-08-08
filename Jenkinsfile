pipeline {
    agent any
    tools {nodejs "node"}

    try{
        stages {
            stage('Build') {
                steps {
                    echo 'Building..'
                    git 'https://github.com/harshahota/autotest.git'
                    sh "npm install"
                    sh "npm run build"
                }
            }

            stage('Test') {
                steps {
                        echo 'Testing..'
                        sh "npm run serve"
                        sh "npm run update-webdriver"
                        sh "npm run test"
                        sh "npm run serve-stop"
                }
            }

            stage('Deploy') {
                steps {
                    echo 'Deploying....'
                }
            }

        }
    }
    catch(err){
            mail body: "project build error is here" ,
            subject: 'project build failed',
            to: 'harshahota123@gmail.com'
            throw err
    }

}
