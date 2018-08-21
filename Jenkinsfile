node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      sh 'docker -v'
      sh 'printenv'
    }
    stage('Build Docker test'){
     sh 'docker build -t react-test -f Dockerfile.test --build-arg MAIL=working .'
    }
    stage('Docker test'){
      sh 'docker run --rm react-test'
    }
    stage('Clean Docker test'){
      sh 'docker rmi react-test'
    }
  }
  catch (err) {
    throw err
  }
}