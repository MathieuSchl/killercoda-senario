#!/bin/bash

useradd gameshell
cd /tmp
apt install gettext man-db procps psmisc nano tree bsdmainutils x11-apps wget -y
wget https://github.com/phyver/GameShell/releases/download/latest/gameshell.sh
runuser -l gameshell -c 'bash gameshell.sh'
