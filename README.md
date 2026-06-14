# My LazyVim Configuration

This repository contains my personal `my-lazyvim-configs` Neovim setup. It is built on top of the LazyVim framework and features a high-contrast Gruvbox Dark Hard aesthetic, transparent terminal background integration, and custom Lualine modes

Strict plugin versioning is enforced via `lazy-lock.json` to ensure 100% reproducibility across all machines

---

## 1. Complete Uninstallation (Wipe Existing Data)

Before installing this configuration, you must completely remove any existing Neovim configurations, plugin files, and state caches.

**UNIX Systems:**

```bash
# Remove config, plugin data, state, and cache directories
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

**Windows (PowerShell):**

```powershell
# Remove config and local data directories
Remove-Item -Recurse -Force $env:LOCALAPPDATA\nvim
Remove-Item -Recurse -Force $env:LOCALAPPDATA\nvim-data
```

---

## 2. Installation

Ensure you have Git and Neovim (v0.9.0 or higher) installed on your system

### Arch Linux

```bash
# 1. Install prerequisites (Arch Linux example)
sudo pacman -S neovim git base-devel wl-clipboard

# 2. Clone this repository directly into the Neovim config path
git clone https://github.com/VictorFilizola/my-lazyvim-configs.git ~/.config/nvim

# 3. Launch Neovim to trigger the Lazy package manager bootstrap
nvim
```

### macOS

```bash
# 1. Install prerequisites via Homebrew
brew install neovim git

# 2. Clone this repository directly into the Neovim config path
git clone [https://github.com/VictorFilizola/my-lazyvim-configs.git](https://github.com/VictorFilizola/my-lazyvim-configs.git) ~/.config/nvim

# 3. Launch Neovim to trigger the Lazy package manager bootstrap
nvim
```

### Windows

_Note: Run this inside a modern terminal app like Windows Terminal using PowerShell_

```powershell
# 1. Install prerequisites via Winget
winget install Neovim.Neovim Git.Git

# 2. Clone this repository directly into the Windows local app data path
git clone [https://github.com/VictorFilizola/my-lazyvim-configs.git](https://github.com/VictorFilizola/my-lazyvim-configs.git) $env:LOCALAPPDATA\nvim

# 3. Launch Neovim to trigger the Lazy package manager bootstrap
nvim
```

---

## 3. Post-Installation

The first time you run `nvim`, the Lazy package manager will read the included `lua/plugins/` configuration directory. It will automatically download all dependencies, install the language servers (via Mason), and compile Treesitter parsers in the background. Wait for the operations UI to finish before editing files
