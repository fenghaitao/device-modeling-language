#!/bin/bash
# Script to invoke DMLC the same way as the build system
# Extracted from: make -n watchdog-timer

SIMICS_BASE="/home/hfeng1/.simics-mcp-server/simics-install/simics-7.57.0"
PROJECT_DIR="/home/hfeng1/simics-dml-vscode/watchdog-timer"
MODULE_DIR="$PROJECT_DIR/modules/watchdog-timer"

exec "$SIMICS_BASE/bin/mini-python" \
    "$DMLC_DIR/dml/python" \
    --simics-api=7 \
    -I"$DMLC_DIR/dml/api/7" \
    -I"$DMLC_DIR/dml" \
    -I. \
    --info \
    -I. \
    -I"$MODULE_DIR" \
    "$@"
