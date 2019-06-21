pipeline {
  agent any
  stages {
    stage("Run unit tests"){
      steps {
        script {
          try {
            sh  '''
              ls -la 
              '''
          } finally {
            junit 'nosetests.xml'
          }
        }
      }
    }
    stage ('Speak') {
      steps{
        echo "Hello, CONDITIONAL"
      }
    }
  }
}
