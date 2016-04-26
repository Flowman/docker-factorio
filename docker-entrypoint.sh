#!/bin/sh

set -e

# if command starts with an option, prepend dovecot
if [ "${1:0:1}" = '-' ]; then
    set -- /opt/factorio/bin/x64/factorio "$@"
fi

if [ "$1" = '/opt/factorio/bin/x64/factorio' ]; then
    # Get config

    if [ ! -f /opt/factorio/saves/save.zip ]; then
      /opt/factorio/bin/x64/factorio --create save
    fi
fi

exec "$@"