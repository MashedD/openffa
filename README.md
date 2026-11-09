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

The GitHub Actions workflow builds the Linux x86_64 library and Windows 32-bit
and 64-bit libraries on every push to `master` and pull request. Tag a commit
with `vMAJOR.MINOR.PATCH` to build and publish a GitHub release containing all
three libraries and SHA-256 checksums.

For local builds, install the platform-specific compilers and libraries listed
above. The Windows configs use `pkg-config` to find the target's static libcurl
and its dependencies; when cross-compiling, `PKG_CONFIG` must point to the
target-aware `pkg-config` wrapper.

```bash
./build-lin64.sh
./clean.sh
./build-win32.sh
./clean.sh
./build-win64.sh
```

Releases are built from version tags, for example:

```bash
git tag -a v1.0.0 -m "OpenFFA 1.0.0"
git push origin v1.0.0
```

