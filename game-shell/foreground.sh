echo "GameShell starting"
echo "Please wait"

while true; do
    # Vérifie si le fichier existe
    if [ -e "/tmp/gameshell.sh" ]; then
        break
    else
        echo -n "."
    fi

    # Attend une seconde avant de vérifier à nouveau
    sleep 1
done

runuser -l gameshell -c "bash gameshell.sh"
