#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   echo "Hata! San�r�m root de�ilsin / Are you root?" 1>&2
   exit 1
fi

cp ./gizlen /usr/bin/gizlen
chmod +x /usr/bin/gizlen

echo "Made with Cyber JUNIOR team. http://cyberjunior.org"
exit 