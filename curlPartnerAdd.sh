#!/bin/sh
curl -X GET --header 'Content-Type: application/json' --user $1:$2 --header 'Accept: */*' 'https://api.glytoucan.org/glycan/partner/id/edit/'$3'?id='$4
