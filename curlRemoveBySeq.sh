#!/bin/sh
echo curl -X POST --header 'Content-Type: application/json' --user $3:$4 --header 'Accept: */*' -d '{ "publicDatabaseStructureId": "'$1'", "sequence": "'$2'" }' 'https://api.beta.glytoucan.org/glycan/removePartnerId'
curl -X POST --header 'Content-Type: application/json' --user $3:$4 --header 'Accept: */*' -d '{ "accessionNumber": "'$2'", "publicDatabaseStructureId": "'$1'", "sequence": "'$3'" }' 'https://api.beta.glytoucan.org/glycan/removePartnerId'
