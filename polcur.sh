#!/bin/sh

login_token="n80njs13vm7w22p3cptpfftpkakcg31v3h3821g3pytf9h28527ca"
username="admin"

auth_token=$(curl -k  --data $login_token https://master1.yoba.net/authn/Kramerica/admin/authenticate | base64 | tr -d '\r\n'| tr -d '[:space:]' )

 #echo "Auth token:$auth_token and nothing else"

#if authentiucation has failed - exit with error
if [ "$auth_token" == "" ];then
   echo "Authnentication has failed. Recheck or rotate your login token and try again."
   exit 11
fi

#Policy upload HTTP error code won't be considered success if HTTP response is not 20x. Execution output is saved in pol/out file.
 policy_upload_http_response_code=$(curl  --write-out %{http_code}  --silent --output ./pol.out  -k -H "Authorization: Token token=\"$auth_token\"" -X POST -d "$(< ./host-create.yml)"  https://master1.yoba.net/policies/Kramerica/policy/root )
#echo "------POST--------- $policy_upload_http_response_code"
if [[ $policy_upload_http_response_code -ge 200 && $policy_upload_http_response_code -lt 300 ]]
    then
        echo "Your policy was uploaded successfully.";
        exit 0
    else
        echo "Your policy was NOT uploaded successfully. Check pol.out file for more information. "
        exit 11
fi
