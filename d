#!/usr/bin/env bash

if [ $# -gt 0 ]; then

    if [ "$1" == "install" ] || [ "$1" == "ins" ]; then
      npm install

    elif [ "$1" == "build" ] || [ "$1" == "rb" ]; then
      npm run build

    elif [ "$1" == "build-watch" ] || [ "$1" == "rbw" ]; then
      npm run build-watch

    else
      npm "$@"

    fi
else
    echo node [$(node -v)] $(which node)
    echo npm [$(npm -v)] $(which npm)
fi
