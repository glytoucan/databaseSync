#!/bin/sh
curl -X POST --header 'Content-Type: application/json' --user $3:$4 --header 'Accept: */*' -d '{ "accessionNumber": "'$2'", "publicDatabaseStructureId": "'$1'" }' 'https://api.beta.glytoucan.org/glycan/removePartnerId'
