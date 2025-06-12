# 🛠️ Neovim Configuration

This repository contains my personal Neovim configuration, written in Lua and leveraging a modern plugin ecosystem for an efficient and enjoyable coding experience.

## Install setup
```shell
$ ansible-playbook setup-neovim.yml
```

## ✨ Features

- **Plugin Management:** Uses vim-plug for easy plugin management.
- **Theming:** Dracula color scheme for a visually appealing interface.
- **LSP Integration:** Ready-to-go Language Server Protocol (LSP) support for Go, Python, Terraform, Bash, Ansible, YAML, and JSON.
- **Fuzzy Finder:** Telescope for fast file and content searching.
- **File Explorer:** NERDTree for project navigation.
- **Snippets:** UltiSnips and vim-snippets for powerful code snippets.
- **Icons:** Devicons support for pretty file icons.
- **Commenting:** NERDCommenter for fast code commenting.
- **Auto-completion:** coc.nvim for intelligent code completion.
- **Editor Tweaks:** Sensible defaults for indentation, search, clipboard, and more.
- **Keymaps:** Custom keybindings for window management, file navigation, and LSP actions.

## 🧩 Plugins

- [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)
- [`dracula/vim`](https://draculatheme.com/vim)
- [`ryanoasis/vim-devicons`](https://github.com/ryanoasis/vim-devicons)
- [`SirVer/ultisnips`](https://github.com/SirVer/ultisnips)
- [`honza/vim-snippets`](https://github.com/honza/vim-snippets)
- [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim)
- [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)
- [`scrooloose/nerdtree`](https://github.com/preservim/nerdtree)
- [`preservim/nerdcommenter`](https://github.com/preservim/nerdcommenter)
- [`neoclide/coc.nvim`](https://github.com/neoclide/coc.nvim)

## ⚙️ Key Features & Customizations

### Editor Settings

- Line numbers, cursor line highlight, and matching bracket highlighting.
- Tabs set to 2 spaces, autoindent, and tabs converted to spaces.
- System clipboard integration (`unnamedplus`).

### Key Bindings

- **Window Management:**  
  - `<C-w>/` — Vertical split  
  - `<C-w>-` — Horizontal split  
  - `<C-w>e` — Equalize splits  
  - `<C-w>x` — Close split  
  - `<C-w>Left/Down/Up/Right>` — Move between splits

- **Telescope:**  
  - `<leader>ff` — Find files  
  - `<leader>fg` — Live grep  
  - `<leader>fb` — Open buffers  
  - `<leader>fh` — Help tags

- **NERDTree:**  
  - `<leader>n` — Focus NERDTree  
  - `<C-n>` — Open NERDTree  
  - `<C-t>` — Toggle NERDTree  
  - `<C-f>` — Find current file in NERDTree

- **LSP Actions (when attached):**  
  - `gd` — Go to definition  
  - `K` — Hover documentation  
  - `gr` — References  
  - `<leader>rn` — Rename symbol

### LSP Servers Enabled

- Go (gopls)
- Python (pyright)
- Terraform (terraformls)
- Bash (bashls)
- Ansible (ansiblels)
- YAML (yamlls)
- JSON (jsonls)

## 🚀 Getting Started

1. **Install [Neovim](https://neovim.io/) (v0.5+)**
2. **Clone this repository:**
   ```sh
   git clone https://github.com/rafaelDev0ps/nvim-config ~/.config/nvim
   ```
3. **Install [vim-plug](https://github.com/junegunn/vim-plug) for Neovim**
4. **Open Neovim and run:**
   ```
   :PlugInstall
   ```
