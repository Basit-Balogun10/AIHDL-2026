#!/bin/bash

# Actually apply the date updates (USE WITH CAUTION - modifies files!)
# Run on a test branch first

CURRENT_DATE=$(date +'%B %d, %Y')
echo "Applying date updates to: $CURRENT_DATE"
echo ""

# PASS 2: Replace [Date] placeholders in ALL .md files
echo "Finding and updating [Date] placeholders..."
find . -name "*.md" -type f | while read file; do
  if grep -q "Last updated: \[Date\]" "$file"; then
    echo "Updating: $file"
    
    # Show before
    echo "  Before: $(grep "Last updated: \[Date\]" "$file")"
    
    # Apply update (works on both macOS and Linux)
    if [[ "$OSTYPE" == "darwin"* ]]; then
      sed -i '' "s/Last updated: \[Date\]/Last updated: $CURRENT_DATE/g" "$file"
    else
      sed -i "s/Last updated: \[Date\]/Last updated: $CURRENT_DATE/g" "$file"
    fi
    
    # Show after
    echo "  After:  $(grep "Last updated: $CURRENT_DATE" "$file")"
    echo ""
  fi
done

echo "Done! Check 'git diff' to see changes"