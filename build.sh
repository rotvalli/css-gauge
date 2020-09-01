#!/bin/bash

# Requires clean-css-cli
# Install: npm install clean-css-cli -g

if [ "$1" == "" ]; then
    echo "Terminated. No version number given. Example: sh build.sh 1.0"
else
    # Compress gauge.css
    cleancss -o gauge.min.css gauge.css
    # Prepend header to gauge.min.css
    printf '%s\n%s\n%s\n%s\n%s\n%s\n%s\n' "/**" " * Version: ${1}" " * Author: Otto Salminen - 2020"  " * Github: https://github.com/rotvalli/css-gauge" " * License: MIT" " */" "$(cat gauge.min.css)" >gauge.min.css

    # Compress gauge-glossy.css
    cleancss -o gauge-glossy.min.css gauge-glossy.css

    #Compose and add version info to example.html
    sed "s/GAUGE_VERSION/${1}/g" example-template.html > example.html

    echo "Built with version number $1"
fi
