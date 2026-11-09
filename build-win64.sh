#!/usr/bin/env bash
set -Eeuo pipefail

make CONFIG_FILE=.config-win64 -j$(nproc)
chmod -x gamex86_64.dll
x86_64-w64-mingw32-strip gamex86_64.dll

