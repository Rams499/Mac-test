#!/bin/bash

# running locally, need to uncomment the below statement to accept the mac_id
# . api-secert.env
# mac_id=$1

# querying the api to get thhe results
curl -X GET "https://api.macaddress.io/v1?apiKey=${API}&output=json&search=${mac_id}">RESTFN_JSON

# grep the Company name
Company_Name=`jq '.vendorDetails.companyName' RESTFN_JSON`

# Display the result 
echo "Mac address - $mac_id is associated with Company - $Company_Name"
