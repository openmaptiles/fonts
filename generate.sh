#!/bin/bash
export PATH=$(npm bin):$PATH

readonly DEPLOY="_deploy"
readonly RELEASE="_release"

rm -Rf "$DEPLOY"
mkdir -p "$DEPLOY"
echo "fonts.openmaptiles.org" > "$DEPLOY"/CNAME

for font in **/*.{ttf,otf}; do
    genfontgl "$font" "$DEPLOY"
done

rm -Rf "$RELEASE"
mkdir -p "$RELEASE"

cd "$DEPLOY"
for font in * ; do
    echo Archive $font
    zip -qr "../$RELEASE/$font".zip "$font"
done

echo "Done"
