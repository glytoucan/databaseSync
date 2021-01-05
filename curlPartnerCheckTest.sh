#!/bin/sh
echo curl -X GET --header 'Content-Type: application/json' --user $1:$2 --header 'Accept: */*' 'https://test.api.gtc.glycosmos.org/glycan/partner/check'
curl -X GET --header 'Content-Type: application/json' --user $1:$2 --header 'Accept: */*' 'https://test.api.gtc.glycosmos.org/glycan/partner/check'
