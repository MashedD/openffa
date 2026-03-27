#!/usr/bin/env bash
set -Eeuo pipefail

make CONFIG_FILE=.config-win32 -j$(nproc)
chmod -x gamex86.dll

