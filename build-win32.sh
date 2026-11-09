#!/usr/bin/env bash
set -Eeuo pipefail

make CONFIG_FILE=.config-win32 -j$(nproc)
chmod -x gamex86.dll
i686-w64-mingw32-strip gamex86.dll

