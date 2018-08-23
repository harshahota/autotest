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
    }
    stage('Environment') {
      sh 'git --version'
    }
  }
  catch (err) {
    throw err
  }
}
