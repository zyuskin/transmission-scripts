#!/usr/bin/env bash

CURL=`which curl`

. ./transmission-scripts.conf

if [ "$UPDATE_PLEX_MEDIA_LIBRARY" == "YES" ]; then
    $CURL http://$PLEX_SERVER_HOST:$PLEX_SERVER_PORT/library/sections/1/refresh
fi;