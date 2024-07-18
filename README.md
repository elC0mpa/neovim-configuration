# Neovim Configuration

[![Build and Release Installers](https://github.com/evert-arias/neovim-configuration/actions/workflows/build-and-release.yml/badge.svg)](https://github.com/evert-arias/neovim-configuration/actions/workflows/build-and-release.yml)

This Neovim configuration is tailored for a streamlined and feature-rich development experience. It includes various tools and settings to enhance productivity and ease of use.

## Features

### Syntax Highlighting & Color Schemes

- Treesitter integration for modern syntax highlighting.
- Additional features like rainbow brackets and text subjects.
- Gruvbox color scheme with dark contrast.

### User Interface Enhancements

- Status bar with Lualine.
- File tree explorer with Nvim-tree.
- Tab and buffer management with Bufferline.
- Indentation visualization with Indent-blankline.

### Code Editing & Navigation

- Autocomplete with Coc.nvim.
- Auto-pairing of brackets.
- Multiple cursor support.
- Navigation using Telescope for file searching, live grep, buffer switching, and more.
- Custom key mappings for quick navigation, saving, quitting, etc.

### Integrated Development Environment (IDE) Features

- Integrated terminal with Toggleterm.
- Easy commenting with Comment.nvim.
- Task management with Todo-comments.

### Git Integration

- Inline Git signs and information with Gitsigns.

## Installation & Usage

### Linux

Execute the following command to install:

```bash
curl -sSL [installer-linux.sh](https://github.com/elC0mpa/neovim-configuration/releases/download/v1.4.1/installer-linux.sh) | bash
```

Or execute the following command to install from the downloaded file:

```bash
bash installer-linux.sh
```

### MacOS

Execute the following command to install:

```bash
curl -sSL [installer-linux.sh](https://github.com/elC0mpa/neovim-configuration/releases/download/v1.4.1/installer-macos.sh) | bash
```

Or execute the following command to install from the downloaded file:

```bash
bash installer-macos.sh
```

### Windows

Download and execute `installer-windows.exe` from the releases page.

## Customization

You can customize the configuration by editing the relevant files in the `~/.config/nvim` directory. Make sure to consult the respective plugin documentation if you need help with individual plugins.

---

*Please note that this configuration might require Neovim 0.5 or higher, and some plugins might need additional dependencies to be installed on your system.*
