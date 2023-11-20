echo 'clear' > /tmp/run_game.sh
echo 'echo "GameShell starting"' >> /tmp/run_game.sh
echo 'echo "Please wait"' >> /tmp/run_game.sh
echo '' >> /tmp/run_game.sh
echo 'while true; do' >> /tmp/run_game.sh
echo '    if [ -e "/tmp/gameshell.sh" ]; then' >> /tmp/run_game.sh
echo '        break' >> /tmp/run_game.sh
echo '    else' >> /tmp/run_game.sh
echo '        echo -n "."' >> /tmp/run_game.sh
echo '    fi' >> /tmp/run_game.sh
echo '' >> /tmp/run_game.sh
echo '    sleep 1' >> /tmp/run_game.sh
echo 'done' >> /tmp/run_game.sh

echo 'runuser -l gameshell -c "bash /tmp/gameshell.sh"' >> /tmp/run_game.sh

cd /tmp
sh /tmp/run_game.sh