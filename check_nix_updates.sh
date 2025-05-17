#!/usr/bin/env bash

FLAKE_DIR="$HOME/hypnix"
BUILD_DIR="result"

# Stelle sicher, dass das Flake existiert
if [ ! -f "$FLAKE_DIR/flake.nix" ]; then
    echo "Error: No Flake configuration found in $FLAKE_DIR"
    exit 1
fi

# Baue das neue System ohne es zu aktivieren
sudo nixos-rebuild build --flake "$FLAKE_DIR/#hypnix" &> /dev/null

# Prüfe, ob der Build erfolgreich war
if [ ! -e "$BUILD_DIR" ]; then
    echo "Error: Build failed."
    exit 1
fi

# Verwende `nvd diff`, um Änderungen zu prüfen und zähle Zeilen mit Versionsänderungen
UPDATE_COUNT=$(nvd diff /run/current-system result | awk '/->/ {count++} END {print count}')

# Falls kein Update vorhanden ist, setze Wert auf 0
if [ -z "$UPDATE_COUNT" ]; then
    UPDATE_COUNT=0
fi

# Gib die Anzahl der Updates aus
echo "$UPDATE_COUNT updates available."

# Optional: Bereinige den result-Ordner
rm -rf result

