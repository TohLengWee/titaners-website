#!/bin/bash
# Titaners Website — Quick Publish to GitHub Pages
# Run this script whenever you want to push updates live.

echo "🚀 Publishing Titaners website..."

cd "$(dirname "$0")"

git add index.html logo-horizontal-white.svg logo-icon-white.svg logo-icon.svg

# Use timestamp as commit message
MSG="Update $(date '+%Y-%m-%d %H:%M')"
git commit -m "$MSG"

git push origin main

echo ""
echo "✅ Done! Your site will be live in ~1 minute at:"
echo "   https://tohlengwee.github.io/titaners-website"
