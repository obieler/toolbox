#!/usr/bin/env bash
#
# Original work (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018-2020.
# Modified work (c) Olivier Bieler, 2018-2020.
# See the LICENSE file for more details.
#

# run this command to flush dns cache:
sudo systemd-resolve --flush-caches

echo "DNS cache flushed!";
