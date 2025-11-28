#!/bin/bash

echo "-------------------------------------------------------"
echo "| Altalena Web Server                                 |"
echo "| Version: 2025/11.26a (2025-11-26 17:40:00)          |"
echo "-------------------------------------------------------"

echo ""

if [[ $EUID -ne 0 ]]; then
    echo "Attenzione: questo script deve essere eseguito come root!"
    exit 1
fi

printf "Avvio di Docker in corso..."
sudo systemctl start docker
printf " [Okeee]\n"

echo "Avvio del server web..."
echo ""

sudo docker compose up -d

echo ""
echo "Okeee :)"

