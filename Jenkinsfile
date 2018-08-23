node {
  try {
    stage('Checkout') {
      sh 'echo ".........................."'
      echo 'Hello World webhook'
      echo 'git repository name is :' + repository_name
      echo 'author of commit is :' + commit_author
      echo 'the commit id is:' + commit_id
      echo 'the commit email is:' + commit_email
      sh 'echo ".........................."'
      checkout([$class: 'GitSCM', branches: [[name: commit_id]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/harshahota/autotest.git']]])
    }
    stage('Environment') {
      sh 'git --version'
    }
    stage('checking email id') {
      sh 'echo $(email)'
    }
    stage('Build Docker test'){
     sh 'docker build -t react-test -f Dockerfile.test --build-arg MAIL=$commit_email .'
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