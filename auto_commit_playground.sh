#!/bin/bash

# Target directory
TARGET_DIR="playground"

# Find new .dart files in playground not yet tracked by Git
new_files=$(find "$TARGET_DIR" -type f -name "*.dart" | grep -vFf <(git ls-files))

# Exit if no new files are found
if [ -z "$new_files" ]; then
  echo "No new .dart files found in '$TARGET_DIR'."
  exit 0
fi

# Process each new file individually
echo "$new_files" | while read filepath; do
  filename=$(basename "$filepath")

  # Clean the filename for commit message
  # Remove leading numbers and underscores, replace underscores with spaces
  clean_name=$(echo "$filename" | sed -E 's/^[0-9]+_//g' | sed 's/_/ /g' | sed 's/\.dart$//')

  # Stage the file
  git add "$filepath"

  # Create a commit with the formatted message
  git commit -m "playground: $clean_name"
done

# Push all commits to the main branch
git push origin main
