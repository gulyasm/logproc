#!/bin/bash
cat $1 | grep -oP '(?<=data=)[A-Za-z0-9=+/]*' | base64 --decode | sed -e $'s/}{/}\\n{/g'
