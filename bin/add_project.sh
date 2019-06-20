#!/usr/bin/env bash

set -e
set -u

BIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
REPO_DIR="$( readlink -f "$BIN_DIR/.." )"

cd "$REPO_DIR"

if [ "$#" -ne 1 ]; then
    echo "usage: $0 <new project name>"
    exit 1
fi

NUM_PROJECTS=$(find "$REPO_DIR/projects" -mindepth 1 -maxdepth 1 -type d | wc -l)
NEW_PROJ_NAME="$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr -s ' ' | tr ' ' '_')"
NEW_PROJ_DIR="$(printf '%02d' "$NUM_PROJECTS")_$NEW_PROJ_NAME"

cp -rv "$REPO_DIR/template" "$REPO_DIR/projects/$NEW_PROJ_DIR"

sed "s/TEMPLATE_PROGRAM_NAME/$NEW_PROJ_NAME/" -i "$REPO_DIR/projects/$NEW_PROJ_DIR/Makefile"
