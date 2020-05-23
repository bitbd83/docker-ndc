#!/bin/sh
set -e

ndcd_setup.sh

echo "################################################"
echo "# Configuration used: /root/.ndc/ndc.conf  #"
echo "################################################"
echo ""
cat /root/.ndc/ndc.conf
echo ""
echo "################################################"

exec ndcd -datadir=/ndc -conf=/root/.ndc/ndc.conf -printtoconsole "$@"
