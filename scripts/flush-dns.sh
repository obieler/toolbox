#!/usr/bin/env bash
#
# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2017-2018.
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
# If you wanted to refresh your settings you could disable and then run
sudo service network-manager restart

echo "DNS Flushed!";
