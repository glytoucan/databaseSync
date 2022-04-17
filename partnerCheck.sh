#!/bin/sh
# This requires httpie to be installed
http --auth $1:$2 https://api.beta.glytoucan.org/glycan/partner/check
