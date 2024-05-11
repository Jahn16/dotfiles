vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.textwidth = 79
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings
opt.smartcase = true

opt.cursorline = false

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- persistent undo
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
