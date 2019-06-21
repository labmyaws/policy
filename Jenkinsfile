pipeline {
    def conjurURL = 'https://conjur-master.nate.lab/'
    def conjurAPI = '1jhmekq2zeqgpc1rsafc6dhv4db1s14zbq2g9dnc71f0kg7d3wabtek'
    def conjurORG = 'cybr'
    def conjurPOLICY_BRANCH = 'root'
    def conjurPOLICY_FILE = 'policy_file.yml'
    def conjurUSER = 'admin'
    def payload = readFile '${conjurPOLICY_FILE}'

  agent any
  stages {
    stage("Run unit tests"){
      steps {
        script {
          try {
        xxx =  sh  '''
//               curl -vvv -k -H "Authorization:Token token=\"$(curl -k --data "391c2tr2n279b255366d3yze3db15f22hxrj92ee179yhbr3b8ej9" "https://master1.yoba.net/authn/Kramerica/dba01/authenticate"| base64 | tr -d '\r\n')\"" https://master1.yoba.net/resources/Kramerica/| jq .
               curl -k --data "391c2tr2n279b255366d3yze3db15f22hxrj92ee179yhbr3b8ej9" "https://master1.yoba.net/authn/Kramerica/dba01/authenticate"| base64 | tr -d '\r\n'

              '''
          } finally {
            junit 'noseests.xml'
          }
        }
      }
    }

  }
}
