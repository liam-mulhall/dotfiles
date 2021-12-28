local o = vim.opt

o.backup = false                          -- make backup file if you write to existing file
o.clipboard = "unnamedplus"               -- use system clipboard for yank and put
o.cmdheight = 2                           -- provide more space in command line for displaying messages
o.completeopt = { "menuone", "noselect" } -- show popup menu even when matches >= 1 and force user to select from popup menu 
o.conceallevel = 0                        -- show text as is; 0 is default; other options allow you to hide syntax
o.cursorline = true                       -- highlight current line
o.expandtab = true                        -- insert spaces when tab key pressed
o.fileencoding = "utf-8"                  -- set file encoding
o.guifont = "monospace:h16"               -- font used in graphical applications
o.hlsearch = true                         -- highlight search matches
o.ignorecase = true                       -- ignore case in search
o.mouse = "a"                             -- allow mouse to be used
o.number = true                           -- numbered lines
o.numberwidth = 2                         -- number column width
o.pumheight = 10                          -- popup menu height
o.relativenumber = false                  -- lines numbered relative to cursor
o.scrolloff = 16                          -- min number of lines to keep above and below cursor
o.shiftwidth = 2                          -- number of spaces inserted for each indentation
o.showmode = false                        -- don't display info about the mode we're in
o.showtabline = 2                         -- always show tabs
o.sidescrolloff = 16                      -- min number of columns to keep left and right of cursor
o.signcolumn = "yes"                      -- show signcolumn
o.smartcase = true                        -- override ignorecase if search is typed and search pattern contains uppercase characters
o.smartindent = true                      -- indent when reasonable to do so, e.g. after {
o.splitbelow = true                       -- force horizontal splits below current window
o.splitright = true                       -- force vertical splits right of current window
o.swapfile = false                        -- create swapfile
o.tabstop = 2                             -- insert 2 spaces for a tab
o.termguicolors = true                    -- set 24-bit rgb colors in terminal
o.timeoutlen = 1000                       -- time in milliseconds to wait for a mapped sequence to complete
o.undofile = true                         -- saves undo history to undo file on write and restore undo history on read
o.updatetime = 300                        -- set time to write to swap file; also used for cursorhold event 
o.wrap = false                            -- wrap lines; if false, horizontal scrolling enabled
o.writebackup = false                     -- make a backup before overwriting a file

