echo '#!/bin/bash' > /tmp/script_install.sh

echo 'useradd gameshell' > /tmp/script_install.sh
echo 'cd /tmp' > /tmp/script_install.sh
echo 'apt install gettext man-db procps psmisc nano tree bsdmainutils x11-apps wget -y' > /tmp/script_install.sh
echo 'wget https://github.com/phyver/GameShell/releases/download/latest/gameshell.sh' > /tmp/script_install.sh
echo 'runuser -l gameshell -c "bash gameshell.sh"' > /tmp/script_install.sh

sh /tmp/script_install.sh
