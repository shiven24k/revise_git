#!/bin/bash

# Set variables
MAIN_BRANCH="main"
FEATURE_BRANCH="prod-shiven-readme"

# Fetch latest changes
echo "Fetching latest changes..."
git fetch origin

# Switch to main branch and pull latest changes
echo "Switching to $MAIN_BRANCH branch..."
git checkout $MAIN_BRANCH
git pull origin $MAIN_BRANCH

# Switch to feature branch
echo "Switching to $FEATURE_BRANCH..."
git checkout $FEATURE_BRANCH

# Merge main into feature branch
echo "Merging $MAIN_BRANCH into $FEATURE_BRANCH..."
git merge $MAIN_BRANCH

# Push the changes to GitHub
echo "Pushing merged changes to GitHub..."
git push origin $FEATURE_BRANCH

echo "Merge process completed!"
