#!/usr/bin/env bash
#
# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2017.
# See the LICENSE file for more details.
#

echo -e '>> DOWNLOADING ATOM...\n'

wget -O ~/tmp/atom.deb wget https://atom.io/download/deb

echo -e '\n>> INSTALLING ATOM...\n'

sudo dpkg -i ~/tmp/atom.deb

rm ~/tmp/atom.deb

echo -e '\n>> ATOM INSTALLED.'
echo -e '\nInstalled version:\n--------------------'

atom --version | grep Atom
