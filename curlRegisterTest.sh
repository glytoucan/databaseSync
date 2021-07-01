#!/bin/sh
curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --user $1:$2 -d '{ "sequence": "'$3'" }' 'https://api.gtc.beta.glycosmos.org/glycan/register'
