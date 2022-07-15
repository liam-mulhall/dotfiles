-- # Useful Stuff

-- ## Guides
-- * https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
-- * https://github.com/nanotee/nvim-lua-guide.

-- ## Inspect Value:
-- If you have version v0.7 you can inspect the value using the command
-- lua =.
-- ```
-- :lua = vim.opt.autoindent
-- ```

-- ====================================================================

-- # Basics

-- Yank to da clipboard, baby!
vim.api.nvim_set_option("clipboard", "unnamed")

-- Let me see whitespace characters!
-- For an explanation of extends and precedes:
--   * https://vi.stackexchange.com/a/15504
--   * TL;DR: It's for when there's a long line and you need to scroll
--     the window.
vim.opt.list = true
-- ASCII chars:
-- vim.opt.listchars = {
--   tab = '>-',
--   trail = '~',
--   nbsp = '+', -- non-breaking space
--   eol = '$',
--   space = '~',
--   extends = '>',
--   precedes = '<'
-- }
-- Unicode chars:
vim.opt.listchars = {
  tab = '▸ ',
  trail = '·',
  nbsp = '␣', -- non-breaking space
  eol = '↲',
  space = '·',
  extends = '→',
  precedes = '←'
}

-- Set da color column and text width to 72 chars, baby!
vim.opt.colorcolumn = "72"
vim.opt.textwidth = 72

-- Gimme dat good spelling.
vim.opt.spell = true

-- ====================================================================

-- # Shortcuts

-- Use space as a the leader key.
vim.g.mapleader = ' '

-- ## One-Letter Stuff
vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('n', '<Leader>q', ':quit!<CR>')
vim.keymap.set('n', '<Leader>e', ':Vexplore<CR>')
vim.keymap.set('n', '<Leader>t', ':terminal<CR>')

-- ## Two-Letter Stuff

-- ### Write and Quit
vim.keymap.set('n', '<Leader>wq', ':wq<CR>')

-- ### Toggles
vim.keymap.set('n', '<Leader>tl', ':set list!<CR>')
vim.keymap.set('n', '<Leader>ts', ':set spell!<CR>')

-- ### Git
vim.keymap.set('n', '<Leader>gs', ':!git status<CR>')
vim.keymap.set('n', '<Leader>gb', ':!git branch<CR>')
