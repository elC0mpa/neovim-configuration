#!/bin/bash

# Define the root directory of the repository
REPO_ROOT=$(git rev-parse --show-toplevel)

# Check if git command succeeded
if [ $? -ne 0 ]; then
  echo "Error: Git repository not found."
  exit 1
fi

# Check for NSIS
if ! command -v makensis &> /dev/null; then
  echo "Error: NSIS is not installed. Please install NSIS to continue."
  exit 1
fi

# Create the build directory if it doesn't exist
mkdir -p build

# Create NSIS Script using a Here Document
cat << EOF > build/installer.nsi
Outfile "installer-windows.exe"
InstallDir "\$LOCALAPPDATA\\nvim"
Section
    SetOutPath \$INSTDIR
    File /r /x '.git' /x '.github' /x 'temp' /x 'scripts' /x 'build' "$REPO_ROOT\\*.*"
SectionEnd
EOF

# Compile the NSIS script
makensis build/installer.nsi

# Check if makensis command succeeded
if [ $? -ne 0 ]; then
  echo "Error: Compilation of NSIS script failed."
  exit 1
fi

echo "Compilation successful! Installer is located in build/installer-windows.exe"
