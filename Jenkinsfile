pipeline {
	agent any

stages {
 try {
	stage ('Check Health of Conjur server') {
		steps {
//			sh ' curl -k --data 1jvt8e312yp8xs2gemsqg2kn81pc2qccb6b3vfq3002xgpy3g11mc93g "https://localhost/authn/Krasmerica/dba01/authenticate" | base64 | tr -d '\r\n')\"" ''
			sh '''
				ls -la
			'''

			}
		}
 } catch(Exception e) {
            // Do something with the exception 
            currentBuild.result = 'SUCCESS'
		}
}


