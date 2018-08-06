pipeline {

 agent any
 tools {nodejs "node"}

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