pipeline {

 agent any
 tools {nodejs "node"}

 stages {

  stage('Build') {

   steps {

    echo 'Building..'
    git 'https://github.com/harshahota/autotest.git'
    sh "npm install"
    sh "npm run start"

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

}