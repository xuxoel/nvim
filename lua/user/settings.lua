vim.o.cmdheight=2

-- Set completeopt to have a better completion experince
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: do not insert text until a selection is made
-- noselect: do not select, force to select one from the menu
vim.o.completeopt = 'menuone,noinsert,noselect'

-- shortness: avoid showing extra messages when using completion
vim.opt.shortmess = vim.opt.shortmess + {c = true}
vim.opt.clipboard = 'unnamedplus'

-- cool floating window popup menu for completion on command line
vim.opt.pumblend = 17
vim.opt.wildmode = "longest:full"
vim.opt.wildoptions = "pum"

vim.o.splitbelow = true
vim.o.splitright = true
vim.o.inccommand = "nosplit"

-- updatetime: set updatetime for CursorHold
vim.o.updatetime = 50

vim.api.nvim_set_hl(0, 'Normal',{bg = 'none'})
vim.api.nvim_set_hl(0, 'NormalFloat',{bg = 'none'})

vim.o.showmode = false  -- Do not show current vim mode since it is already shown by Lualine
vim.o.showcmd = true
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.backup = false
vim.o.smartcase = true
vim.o.scrolloff = 8
vim.o.undofile = true

vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true  -- Enables cursor line position tracking
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "80"

vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.smartindent = true
vim.bo.swapfile = false

vim.o.hlsearch =false
vim.o.incsearch = true

vim.o.smoothscroll = true

-- Netrw
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 20
