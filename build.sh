#!/bin/env bash

NAME="Botanical Pots"
VERSION="3.1.0"

rm *.zip
echo "{
    \"pack\": {
        \"description\": \"§o*Room plants for dummies*\n§8@Manchick | v§7$VERSION\",
        \"max_format\": [121, 0],
        \"min_format\": [121, 0]
    }
}" > pack.mcmeta
zip "$NAME $VERSION.zip" -r data pack.mcmeta pack.png 