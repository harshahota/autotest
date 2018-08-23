node {
  try {
    stage('Checkout') {
      sh 'echo "............................"'
      sh 'echo $(env.body)'
      sh 'echo $(env.payload)'
      sh 'echo $(BODY)'
      sh 'echo $(PAYLOAD)'
      sh 'echo "............................"'
    }
    stage('Environment') {
      sh 'git --version'
    }
  }
  catch (err) {
    throw err
  }
}
