node {
  try {
    stage('Checkout') {
      sh 'echo "..........................."'
      sh 'echo $(data)'
      sh 'echo $(env.data)'
      sh 'echo $data'
      sh 'echo $(PAYLOAD)'
      sh 'echo "..........................."'
    }
    stage('Environment') {
      sh 'git --version'
    }
  }
  catch (err) {
    throw err
  }
}
