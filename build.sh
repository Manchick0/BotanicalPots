#!/bin/env bash
NAME=$(circumscribe evaluate name)
VERSION=$(circumscribe evaluate version)

rm -f "$NAME"*.zip
if circumscribe evaluate "pack(version)" > pack.mcmeta; then
    zip "$NAME $VERSION.zip" -r data pack.mcmeta pack.png
    exit 0
fi
exit 1