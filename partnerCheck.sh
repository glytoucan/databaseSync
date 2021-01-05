#!/bin/sh
# This requires httpie to be installed
http --auth $1:$2 https://test.api.gtc.glycosmos.org/glycan/partner/check
