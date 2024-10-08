-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

local opt = vim.opt

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Disable mouse
opt.mouse = ""

-- Hide the mode, since it's already in the status line
opt.showmode = false

-- Enable break indent
opt.breakindent = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

-- Preview substitutions live
opt.inccommand = "split"

-- Show which line your cursor is on
opt.cursorline = true

-- Minimum number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
