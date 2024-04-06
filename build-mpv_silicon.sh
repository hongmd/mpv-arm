#!/usr/bin/env bash

# Builds mpv & mpv.app on Apple silicon Macs.
# Run this script from the root directory of the mpv repo.

# if anything fails, gtfo
set -ex

meson setup build
meson compile -C build
# test the binary we just built
./build/mpv --version

./TOOLS/osxbundle.py --skip-deps build/mpv
if [[ $1 == "--static" ]]; then
	dylibbundler --bundle-deps --dest-dir build/mpv.app/Contents/MacOS/lib/ --install-path @executable_path/lib/ --fix-file build/mpv.app/Contents/MacOS/mpv
	# test the app binary to make sure all the dylibs made it okay
	./build/mpv.app/Contents/MacOS/mpv --version
fi