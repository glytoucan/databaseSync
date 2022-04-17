#!/bin/sh
echo curl -X GET --header 'Content-Type: application/json' --user $1:$2 --header 'Accept: */*' 'https://api.beta.glytoucan.org/glycan/partner/check'
curl -X GET --header 'Content-Type: application/json' --user $1:$2 --header 'Accept: */*' 'https://api.beta.glytoucan.org/glycan/partner/check'
