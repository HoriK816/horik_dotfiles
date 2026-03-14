local opt = vim.opt

-- genral settings 
opt.number   = true 
opt.autoread = true

-- indentation
opt.autoindent = true 
opt.tabstop    = 4
opt.shiftwidth = 4
opt.expandtab  = true

-- appearance 
opt.colorcolumn       = "80"
opt.cursorline        = true
opt.cursorcolumn      = true 
vim.opt.termguicolors = true

-- spelling
opt.spelllang = "en_us"

-- search
opt.hlsearch   = true
opt.ignorecase = true
