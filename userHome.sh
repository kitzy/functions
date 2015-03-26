#!/bin/bash

# Find the current logged in user
user=$(ls -l /dev/console | awk '{print $3}')

# Find the home folder of the current logged in user
userHome=$(dscl . read /Users/$user NFSHomeDirectory | awk '{print $NF}')