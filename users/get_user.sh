#!/bin/bash

#[ -z "$1" ] && { echo "Please provide a list with logins to be deactivated"; exit 99; }

#[ ! -f $1 ] && { echo "$1 file not foound" }

#load okta server, api key
source ../preview_env.sh

response=$(curl --silent -X GET \
    $oktaHostname/api/v1/users/placid.tamales_0o@icloud.com \
    -H "Accept: application/json" \
    -H "Authorization: SSWS $apiToken" \
    -H "Content-Type: application/json"     )

echo $response