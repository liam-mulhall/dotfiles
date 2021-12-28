-- scroll window
-- up: C-y
-- down: C-e

-- modes
-- n = normal_mode i = insert_mode
-- v = visual_mode
-- x = visual_block_mode
-- t = term_mode
-- c = command_mode

-- options for the vast majority of keymaps
local opts = { noremap = true, silent = true }

-- terminal options
local term_opts = { silent = true }

-- shorten keymap command
local keymap = vim.api.nvim_set_keymap

-- space is leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------------------------------------------------------------------------------
-- normal mode stuff
-------------------------------------------------------------------------------

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- file explorer
keymap("n", "<Leader>e", "<Cmd>NvimTreeToggle<CR>", opts)

-- column at 80 characters (cn = column narrow)
keymap("n", "<Leader>cn", "<Cmd>set colorcolumn=80<CR>", opts)

-- column at 120 characters (cw = column wide)
keymap("n", "<Leader>cw", "<Cmd>set colorcolumn=120<CR>", opts)

-- no column (co = column off)
keymap("n", "<Leader>co", "<Cmd>set colorcolumn=<CR>", opts)

-- telescope stuff
keymap("n", "<Leader>tb", "<Cmd>Telescope buffers<CR>", opts)
keymap("n", "<Leader>tf", "<Cmd>Telescope find_files<CR>", opts)
keymap("n", "<Leader>tg", "<Cmd>Telescope live_grep<CR>", opts)
keymap("n", "<Leader>tk", "<Cmd>Telescope keymaps<CR>", opts)
keymap("n", "<Leader>tr", "<Cmd>Telescope registers<CR>", opts)

-- resize windows with arrow keys
keymap("n", "<C-S-Up>", "<Cmd>resize +2<CR>", opts)
keymap("n", "<C-S-Down>", "<Cmd>resize -2<CR>", opts)
keymap("n", "<C-S-Left>", "<Cmd>vertical resize +2<CR>", opts)
keymap("n", "<C-S-Right>", "<Cmd>vertical resize -2<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", "<Cmd>bnext<CR>", opts)
keymap("n", "<S-h>", "<Cmd>bprevious<CR>", opts)

-------------------------------------------------------------------------------
-- visual mode stuff
-------------------------------------------------------------------------------

-- stay in indent mode (move block text left or right)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up or down
-- to use alt (meta) key on macos, you need to use iterm
-- in iterm, you need to enable a setting to use alt key as meta
-- google setting; iterm likes to change things
-- y u do dis macos
keymap("v", "<M-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<M-k>", ":m '<-2<CR>gv=gv", opts)

-- don't yank word you put on in visual mode
--
-- for example, if you yank foo, enter visual mode,
-- then put on bar, you will still be able to put
-- foo
--
-- normally, if you yank foo, enter visual mode,
-- and put on bar, bar would be in your register
keymap("v", "p", '"_dP', opts)

-------------------------------------------------------------------------------
-- terminal stuff
-------------------------------------------------------------------------------

keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

