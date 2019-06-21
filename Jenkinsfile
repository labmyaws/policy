pipeline {
  agent any
  stages {
    stage("Run unit tests"){
      steps {
        script {
          try {
            sh  '''
               curl -vvv -k -H "Authorization:Token token=\"$(curl -k --data "391c2tr2n279b255366d3yze3db15f22hxrj92ee179yhbr3b8ej9" "https://master1.yoba.net/authn/Kramerica/dba01/authenticate"| base64 | tr -d '\r\n')\"" https://master1.yoba.net/resources/Kramerica/| jq .


              '''
          } finally {
            junit 'noseests.xml'
          }
        }
      }
    }

  }
}
