#!/bin/bash

# Specify log name
log="name.log"

# Create log file
touch /var/log/"${log}"

# Pipe all output to log
exec >> /var/log/"${log}"

# Log function
# Call this function the same way you would use echo
# EXAMPLE: log "Updating something or other"

log()
{
NOW="$(date +"%Y-%m-%d-%H-%M")"
echo "$NOW": "$1"
}
