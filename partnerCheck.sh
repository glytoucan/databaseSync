#!/bin/sh
# This requires httpie to be installed
http --auth $1:$2 https://api.gtc.beta.glycosmos.org/glycan/partner/check
