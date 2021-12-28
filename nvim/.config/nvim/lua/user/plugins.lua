local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "installing packer; close and reopen neovim..."
  vim.cmd [[ packadd packer.nvim ]]
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- install your plugins here
return packer.startup(function(use)

  use "wbthomason/packer.nvim"                      -- have packer manage itself

  -- base plugins
  use "nvim-lua/plenary.nvim"                       -- useful lua functions used ny lots of plugins
  use "nvim-lua/popup.nvim"                         -- an implementation of the popup api from vim in neovim

  -- color schemes
  use "folke/tokyonight.nvim"                       -- nice dark color scheme (defaults to storm variant)

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                            -- the completion plugin
  use "hrsh7th/cmp-buffer"                          -- buffer completions
  use "hrsh7th/cmp-path"                            -- path completions
  use "hrsh7th/cmp-cmdline"                         -- command line completions
  use "saadparwaiz1/cmp_luasnip"                    -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"                        -- lsp completion
  use "hrsh7th/cmp-nvim-lua"                        -- lua completion

  -- snippets
  use "L3MON4D3/LuaSnip"                            -- snippet engine
  use "rafamadriz/friendly-snippets"                -- a bunch of snippets to use

  -- lsp
  use "neovim/nvim-lspconfig"                       -- enable lsp
  use "williamboman/nvim-lsp-installer"             -- simple to use language server installer

  -- telescope
  use "nvim-telescope/telescope.nvim"               -- file finder on the juice

  -- smooth scrolling
  use {
    "psliwka/vim-smoothie",                         -- scroll movements like C-u and C-d are smooth
    config = vim.cmd [[ let g:smoothie_experimental_mappings = 1 ]]
  }

  -- comments
  use "numToStr/Comment.nvim"                       -- easily comment code

  -- treesitter and treesitter plugins
  use {
    "nvim-treesitter/nvim-treesitter",              -- consistent syntax highlighting
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"                        -- rainbow delimiters
  use "JoosepAlviste/nvim-ts-context-commentstring" -- comment based on context of cursor

  -- git
  use "lewis6991/gitsigns.nvim"                     -- shows additions, deletions, etc. on left of screen

  -- nvim-tree
  use "kyazdani42/nvim-web-devicons"                -- icons for nvimtree
  use "kyazdani42/nvim-tree.lua"

  -- tabs and tab closer
  use "akinsho/bufferline.nvim"                     -- tabs
  use "moll/vim-bbye"                               -- closes tabs (buffers)

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

