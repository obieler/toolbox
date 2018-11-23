#!/usr/bin/env bash
#
# Original work (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2017-2018.
# Modified work (c) Olivier Bieler, 2018.
# See the LICENSE file for more details.
#

# Check if wget is installed
which wget > /dev/null
if [ 0 -ne $? ]; then
  echo -e 'wget not found. use: sudo apt-get install wget'
  exit 1
fi

echo -e '>> DOWNLOADING ATOM...\n'

wget -O /tmp/atom.deb https://atom.io/download/deb

echo -e '\n>> INSTALLING ATOM...\n'

sudo dpkg -i /tmp/atom.deb

rm /tmp/atom.deb

echo -e '\n>> ATOM INSTALLED.'
echo -e '\nInstalled version:\n--------------------'

atom --version | grep Atom
