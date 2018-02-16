#!/usr/bin/env bash
#
# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# See the LICENSE file for more details.
#

WEBSITE=$1

if [ $# -eq 0 ]; then
  echo "Usage: $0 <WEBSITE>"
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
# -E -> adjust extension
# -m -> mirror (recursion)
# -e robots=off -> ignore the robots.txt and the nofollow directives
# -w 1 -> wait 1 second between the retrievals
# --no-parent -> do not ever ascend to the parent directory
wget -p -k -E -m -e robots=off -w 1 --no-parent $WEBSITE
