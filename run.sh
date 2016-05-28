#!/usr/bin/env bash
set -e

# Remove old pid if it exists
[ -f /config/deluged.pid ] && rm -f /config/deluged.pid

# Start Deluge Daemon
/usr/bin/deluged --config /config --logfile /config/deluged.log --loglevel info

# Start Deluge Web UI
/usr/bin/deluge-web --config /config --logfile /config/deluge-web.log --loglevel info
