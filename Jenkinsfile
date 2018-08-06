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
    sh "serve -s build"

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