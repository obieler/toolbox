#!/usr/bin/env bash
#
# Original work (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# Modified work (c) Olivier Bieler, 2018.
# See the LICENSE file for more details.
#

URL=$1

if [ $# -eq 0 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Check if wget is installed
which wget > /dev/null
if [ 0 -ne $? ]; then
  echo -e 'wget not found. use: sudo apt-get install wget'
  exit 1
fi

# wget flags and their functions
# -p -> downloads images
# -k -> changes links addresses to their local file address
# -w 1 -> wait 1 second between the retrievals
wget -p -k -w 1 $URL
