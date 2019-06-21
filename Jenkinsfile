pipeline {
	agent any

stages {
	stage ('Check Health of Conjur server') {
		steps {
//			sh ' curl -k --data 1jvt8e312yp8xs2gemsqg2kn81pc2qccb6b3vfq3002xgpy3g11mc93g "https://localhost/authn/Krasmerica/dba01/authenticate" | base64 | tr -d '\r\n')\"" ''

		BUILD_FULL = sh (
			script: "git log -1 --pretty=%B | grep '\\[jenkins-full]'",
			returnStatus: true
		) == 0
		echo "Build full flag: ${BUILD_FULL}"
			}
		}
        }
}


