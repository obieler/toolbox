#!/usr/bin/env bash
#
# Original work (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# Modified work (c) Olivier Bieler, 2018.
# See the LICENSE file for more details.
#

# run this command to flush dns cache:
sudo /etc/init.d/dns-clean restart
# or use:
sudo /etc/init.d/networking force-reload
# Flush nscd dns cache if exist
if [ -n "$(command -v nscd)" ]; then
    sudo /etc/init.d/nscd restart
fi

echo "DNS Flushed!";
