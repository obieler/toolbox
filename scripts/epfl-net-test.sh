#!/usr/bin/env bash
#
# (c) ECOLE POLYTECHNIQUE FEDERALE DE LAUSANNE, Switzerland, VPSI, 2018.
# See the LICENSE file for more details.
#

usage() {
  echo -e "Usage: $0 -h <string>" 1>&2
  echo -e "\nExample:\n" 1>&2
  echo -e "$0 -h actu.epfl.ch" 1>&2
  echo -e "$0 -h www.epfl.ch\n" 1>&2
  exit 1
}

if [ -z "$(command -v epfl-net-ipv6-test)" ]; then
  echo -e "You need to install EPFL::Net::ipv6Test package to use this programm." 1>&2
  echo -e "cpan install EPFL::Net::ipv6Test" 1>&2
  exit 1
fi

if [ -z "$(command -v epfl-net-ssl-test)" ]; then
  echo -e "You need to install EPFL::Net::SSLTest package to use this programm." 1>&2
  echo -e "cpan install EPFL::Net::SSLTest" 1>&2
  exit 1
fi

while getopts ":h:" o; do
  case "${o}" in
    h)
      h=${OPTARG}
      ;;
    *)
      usage
      ;;
  esac
done
shift $((OPTIND-1))

if [ -z "${h}" ]; then
  usage
fi

epfl-net-ipv6-test --domain=${h}
epfl-net-ssl-test --domain=${h}
