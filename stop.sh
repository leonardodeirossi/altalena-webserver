#!/bin/bash

echo "-------------------------------------------------------"
echo "| Altalena Web Server                                 |"
echo "| Version: 2026/02.27a (2026-02-27 09:19:00)          |"
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

