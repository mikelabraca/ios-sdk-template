#!/usr/bin/env bash

# Colors
Reset='\033[0m'
Red='\033[0;31m'
BRed='\033[1;31m'
BBlue='\033[1;34m'
BIBlack='\033[1;90m' 
BIGreen='\033[1;92m' 
BIPurple='\033[1;95m'
On_IRed='\033[0;101m'

######

BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "main" && "$BRANCH" != "develop" ]]; then
  echo 'This script must be run from the main or develop branch. Aborting script';
  exit 1;
fi

echo "${Red}Cut a new release for $BIGreen$SPEC_NAME$Reset? ${BBlue}This will create and push new branch.$Reset\n"

EXISTING=$(git describe --tags `git rev-list --tags --max-count=1`)

echo "The current version is $BIGreen$EXISTING$Reset"

read -p 'Enter a new version (ex. 1.0.0): ' VERSION

echo "Great! I'll create a tag for version $BIGreen$VERSION$Reset.\n"

git checkout -b release/$VERSION
git push origin release/$VERSION
git branch --set-upstream-to=origin/release/$VERSION release/$VERSION
git push origin release/$VERSION

echo "${On_IRed}${BIBlack} A pull request will automatically be created for you.${Reset}"