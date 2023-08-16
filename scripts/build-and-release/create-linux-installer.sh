#!/bin/bash

# Validate inputs
if [[ -z "$1" || -z "$2" ]]; then
  echo "Usage: $0 <github_repository> <release_tag>"
  exit 1
fi

GITHUB_REPOSITORY=$1
RELEASE_TAG=$2

# Create the build directory if it doesn't exist
mkdir -p build

# Create release pack
mkdir -p temp
tar -czvf build/config.tar.gz --exclude='.github' --exclude='temp' --exclude='.git' --exclude='scripts' --exclude='build' .
rm -rf temp

# Create Linux Installer
cat << EOF > build/installer-linux.sh
#!/bin/bash
echo "Downloading Neovim configuration..."
curl -LO https://github.com/$GITHUB_REPOSITORY/releases/download/$RELEASE_TAG/config.tar.gz
echo "Extracting Neovim configuration..."
mkdir -p ~/.config/nvim
tar xz -C ~/.config/nvim -f config.tar.gz
echo "Installation complete!"
rm -f config.tar.gz
EOF

chmod +x build/installer-linux.sh