#!/usr/bin/env bash

set -e

if [ ! -d "$DIRECTORY" ]; then
  echo "Not a git repository. Create a git repository before running this script."
fi

read -p 'What is the name of your framework (this will be the target name in Xcode, ex. UITestUtilities): ' FRAMEWORK_NAME
read -p 'What is the name of your repository (the last part of the repo url without the .git, ex. UITestUtilities-ios): ' FRAMEWORK_REPO_NAME
read -p 'Write a brief description of your framework: ' FRAMEWORK_DESCRIPTION

find . -name '*' -type f -not -path './.git/*' -not -name 'setup-project.sh' -not -name '.DS_Store' -exec sed -i '' 's/FRAMEWORK_NAME/'"$FRAMEWORK_NAME"'/g' {} \;
find . -name '*' -type f -not -path './.git/*' -not -name 'setup-project.sh' -not -name '.DS_Store' -exec sed -i '' 's/FRAMEWORK_REPO_NAME/'"$FRAMEWORK_REPO_NAME"'/g' {} \;
find . -name '*' -type f -not -path './.git/*' -not -name 'setup-project.sh' -not -name '.DS_Store' -exec sed -i '' 's/FRAMEWORK_DESCRIPTION/'"$FRAMEWORK_DESCRIPTION"'/g' {} \;
find . -name 'Makefile' -exec sed -i '' '7,10d' {} \;
find . -name 'Makefile' -exec sed -i '' 's/ bootstrap//g' {} \;
mv FRAMEWORK_NAME.podspec "$FRAMEWORK_NAME.podspec"

echo "Done! Create a \`develop\` branch, add your source files to the Sources directory and run \`make\`\n"