#!/bin/bash

# Usage: ./record.sh bbb_url outputfile.webm

docker run --rm -ti -v $PWD:/var/www/bigbluebutton-default/record boileaum/bbb-recorder $1 $2 0 true
