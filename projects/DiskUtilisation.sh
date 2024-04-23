#!/bin/bash

# Get filesystem usage information and sort by percentage usage
result=$(df -h --output=target,pcent | grep -v 'Use%' | sort -k2 -n -r | head -n 1)

# Extract the usage percentage from the result
usage_percentage=$(echo "$result" | awk '{print substr($0, index($0,$2))}')

# Check if the usage percentage is 80% or more
if [[ $usage_percentage =~ ^[8-9][0-9]%$|100%$ ]]; then
    echo "Warning: Filesystem usage is $usage_percentage or more"
else
    echo "Filesystem usage is below 80%"
fi

echo "$result"

