#!/bin/bash

TARGET=~/organizer-test

echo "Organizing files in $TARGET"

for file in $TARGET/*
do
if [ -f "$file" ]; then
case "${file##*.}" in
txt)
mv "$file" "$TARGET/docs/" ;;
sh)
mv "$file" "$TARGET/scripts/" ;;
log)
mv "$file" "$TARGET/logs/" ;;
*)
mv "$file" "$TARGET/misc/" ;;
esac
fi
done
echo "Done.Files organized."
