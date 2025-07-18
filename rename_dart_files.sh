#!/bin/bash

# Find all .Dart files with "-" in the name
find . -type f -name "*-*.dart" | while read filepath; do
  filename=$(basename "$filepath")
  dirname=$(dirname "$filepath")
  newfilename=$(echo "$filename" | sed 's/-/_/g')
  newfilepath="$dirname/$newfilename"

  # Rename if the name changes
  if [ "$filepath" != "$newfilepath" ]; then
    echo "Renamed: $filepath → $newfilepath"
    mv "$filepath" "$newfilepath"
  fi
done
