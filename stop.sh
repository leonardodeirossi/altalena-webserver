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

echo "Arresto del server web..."
echo ""

sudo docker compose down

echo ""
echo "[Okeee]"
echo ""

printf "Arresto di Docker in corso..."
sudo systemctl stop docker.socket
sudo systemctl stop docker

echo ""
echo "Okeee :)"

