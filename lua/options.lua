require "nvchad.options"

-- Quality of life options
local o = vim.o
local opt = vim.opt

-- Editor behavior
o.relativenumber = true -- Relative line numbers for easier navigation
o.cursorline = true -- Highlight current line
o.cursorlineopt = "both" -- Highlight both line number and text
o.scrolloff = 8 -- Keep 8 lines above/below cursor
o.sidescrolloff = 8 -- Keep 8 columns left/right of cursor
o.wrap = false -- Don't wrap long lines
o.linebreak = true -- Break lines at word boundaries when wrap is on

-- Indentation (JavaScript-friendly)
o.expandtab = true -- Use spaces instead of tabs
o.shiftwidth = 2 -- Indent with 2 spaces
o.tabstop = 2 -- Tab displays as 2 spaces
o.softtabstop = 2 -- Backspace removes 2 spaces
o.smartindent = true -- Auto-indent new lines
o.shiftround = true -- Round indent to multiple of shiftwidth

-- Search improvements
o.ignorecase = true -- Case-insensitive search
o.smartcase = true -- Case-sensitive if search contains uppercase
o.hlsearch = true -- Highlight search results
o.incsearch = true -- Incremental search

-- File handling
o.undofile = true -- Persistent undo history
o.backup = false -- No backup files
o.writebackup = false -- No backup while writing
o.swapfile = false -- No swap files
o.updatetime = 250 -- Faster completion (default 4000ms)
o.timeoutlen = 400 -- Faster key sequence timeout

-- UI improvements
o.signcolumn = "yes" -- Always show sign column (prevents text shifting)
o.colorcolumn = "80,120" -- Show column guides at 80 and 120 chars
o.splitright = true -- Vertical splits go right
o.splitbelow = true -- Horizontal splits go below
o.termguicolors = true -- Enable 24-bit RGB colors
o.pumheight = 10 -- Max items in popup menu
o.showmode = false -- Don't show mode (statusline shows it)
o.conceallevel = 0 -- Show `` in markdown files

-- Performance
o.lazyredraw = false -- Don't skip redraws (better for modern terminals)
o.synmaxcol = 240 -- Don't highlight super long lines

-- Better completion experience
opt.completeopt = { "menu", "menuone", "noselect" }

-- Mouse support
o.mouse = "a" -- Enable mouse in all modes

-- Clipboard (use system clipboard)
opt.clipboard = "unnamedplus"

-- Session options (useful for persistence plugins)
opt.sessionoptions = "buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds"

-- Better whitespace handling
opt.list = true
opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
  extends = "⟩",
  precedes = "⟨",
}
