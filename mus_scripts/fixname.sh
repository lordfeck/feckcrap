#!/bin/bash

# (C) 2020 Lordfeck, BSD 3-Clause Licence

# We want to fix a few folder names in this script.
# Example Src: [1995] Understated Album
# Example Out: Smartest Artist - Understated Album [1995]

artist="Smartest Artist"

for fl in *; do
    # Skip the script name 
    if [[ "$fl" =~ "${0##*/}" ]]; then
        continue
    fi

    year=$( echo $fl | grep -Eo '\[[[:digit:]]*\]' )

    # sed treats angle brackets as regex sets, so strip these here
    year=$( echo $year | tr -d '\[\]' )
    albName=$( echo $fl | sed -e "s/\[$year\]\ //" )

    mv -v "$fl"  "$artist - $albName [$year]"
done
