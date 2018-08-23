node {
  try {
    stage('Checkout') {
      sh 'echo ".........................."'
      echo 'Hello World webhook'
      echo 'git repository name is :' + repository_name
      echo 'author of commit is :' + commit_author
      echo 'the commit id is:' + commit_id
      sh 'echo ".........................."'
    }
    stage('Environment') {
      sh 'git --version'
    }
  }
  catch (err) {
    throw err
  }
}
