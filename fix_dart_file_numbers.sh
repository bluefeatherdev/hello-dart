#!/bin/bash

TARGET_FOLDER="language/15-keywords" # Important!
cd "$TARGET_FOLDER" || { echo "Folder not found: $TARGET_FOLDER"; exit 1; }

# Find all files that start with number and end in .Dart
files=($(ls | grep -E '^[0-9]+_.*\.dart$' | sort))

num=240 # Important!
for file in "${files[@]}"; do
  rest_name=$(echo "$file" | sed -E 's/^[0-9]+_//')
  new_file=$(printf "%03d_%s" "$num" "$rest_name")
  if [ "$file" != "$new_file" ]; then
    echo "Renamed: $file → $new_file"
    mv "$file" "$new_file"
  fi
  ((num++))
done

echo "Numbering corrected at $target_folder from $num."
