node {
  try {
    stage('Checkout') {
      checkout scm
      script {
        def email = sh 'git rev-parse HEAD | git show | grep "Author" | grep -o -i "<.*>" | tr -d "<" | tr -d ">"'
      }
    }
    stage('Environment') {
      sh 'git --version'
    }
    stage('checking email id') {
      sh 'echo $(email)'
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