vim.cmd [[
  call plug#begin()
  Plug 'neovim/nvim-lspconfig'
  Plug 'dracula/vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  call plug#end()
]]

-- Basic editor settings
vim.opt.showmatch = true           -- show matching brackets
vim.opt.ignorecase = true          -- case insensitive search
vim.opt.mouse = 'a'                -- enable mouse (changed from 'v' to 'a' for all modes)
vim.opt.hlsearch = true            -- highlight search results
vim.opt.incsearch = true           -- incremental search
vim.opt.tabstop = 2                -- number of columns occupied by a tab
vim.opt.softtabstop = 2            -- see multiple spaces as tabstops
vim.opt.expandtab = true           -- converts tabs to white space
vim.opt.shiftwidth = 2             -- width for autoindents
vim.opt.autoindent = true          -- indent a new line the same amount as the line just typed
vim.opt.number = true              -- add line numbers
vim.opt.wildmode = {'longest', 'list'}  -- bash-like tab completions
vim.opt.clipboard = 'unnamedplus'  -- use system clipboard
vim.opt.cursorline = true          -- highlight current cursor line

-- Enable filetype detection, plugins, and indentation
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

-- Window splitting keymaps
vim.keymap.set('n', '<C-w>/', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<C-w>-', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-w>e', '<C-w>=', { desc = 'Make splits equal size' })
vim.keymap.set('n', '<C-w>x', '<cmd>close<CR>', { desc = 'Close current split' })

-- Window navigation keymaps
vim.keymap.set('n', '<C-w>Left', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<C-w>Down', '<C-w>j', { desc = 'Go to lower window' })
vim.keymap.set('n', '<C-w>Up', '<C-w>k', { desc = 'Go to upper window' })
vim.keymap.set('n', '<C-w>Right', '<C-w>l', { desc = 'Go to right window' })

-- TELESCOPE CONFIGS
-- Find files using Telescope command-line sugar.
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- LSPs Config
local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

lspconfig.pyright.setup({})
lspconfig.terraformls.setup({})
lspconfig.bashls.setup({})
lspconfig.ansiblels.setup({})
lspconfig.yamlls.setup({})
lspconfig.jsonls.setup({})

-- LSP Basic keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  end,
})

-- NERDTree configs
vim.keymap.set('n', '<leader>n', ':NERDTreeFocus', { desc = '' })
vim.keymap.set('n', '<C-n>', ':NERDTree', { desc = '' })
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle', { desc = '' })
vim.keymap.set('n', '<C-f>', ':NERDTreeFind', { desc = '' })
