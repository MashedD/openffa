# openffa

This fork add cross compilation setup.
See original [README](README.asciidoc).

# Building

## Prerequisites

Dependencies might be missing and some are probably excessive.
I didn't optimize this as it's time/cost not effective for me.
Best might be to use Docker for the job.

```bash
# Tested on CachyOS
sudo pacman -S cmake gcc

# For cross compilation
sudo pacman -S \
    mingw-w64-tools \
    mingw-w64-binutils \
    mingw-w64-crt \
    mingw-w64-gcc \
    mingw-w64-headers \
    mingw-w64-winpthreads
paru -S \
    mingw-w64-zlib \
    mingw-w64-zlib-ng \
    mingw-w64-ffmpeg \
    mingw-w64-pkg-config \
    mingw-w64-libpng \
    mingw-w64-libjpeg-turbo \
    mingw-w64-openal \
    mingw-w64-zstd
```

## Compilation

Review scripts before executing them.

```bash
./build-lin64.sh
./clean.sh
./build-win32.sh
./clean.sh
./build-win64.sh
```

