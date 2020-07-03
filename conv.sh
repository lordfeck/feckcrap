#!/bin/bash
# help: https://stackoverflow.com/a/54561526
# qnd find and convert script, also fix filenames

declare -a fileList

input='*.png'
readarray -d '' fileList < <(find . -type f -name "$input" -print0)

for file in "${fileList[@]}"; do
    # swap out spaces for dashes
    outFile=$( echo $file | tr -t ' ' '-' | sed 's/png/jpg/g' )
    echo "Infile: $file OutFile: $outFile"
    sleep 1
    # max 1000px wide, scale down height by same ratio
    magick convert "$file" -flatten -resize 1000x "$outFile"
done
