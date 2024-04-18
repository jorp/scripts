#!/bin/bash
# directions: place this script inside your roms folder
# assumption: >1 file implies roms exist, which is not always true, but good enough for my usage
# output: will give GB usage total for each system directory within roms directory that contains >1 file
find . -mindepth 1 -maxdepth 1 -type d -exec sh -c 'files=$(find "$0" -maxdepth 1 -type f | wc -l); if [ "$files" -gt 1 ]; then echo "$(du -sh "$0")"; fi' {} \;
