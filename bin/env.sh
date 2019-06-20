#!/usr/bin/env bash

set -e
set -u

if [ "${BASH_SOURCE[0]}" -ef "$0" ]; then
    echo "This script should be sourced, not executed"
    echo "Run like this: . $0"
    exit 1
fi

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
REPO_DIR="$( readlink -f "$BIN_DIR/.." )"

export PATH="$PATH:$REPO_DIR/bin"

if [ -z "${LD_LIBRARY_PATH+x}" ]; then
    export LD_LIBRARY_PATH="$REPO_DIR/lib"
else
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$REPO_DIR/lib"
fi
