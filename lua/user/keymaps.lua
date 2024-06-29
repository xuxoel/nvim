-- Vim keymaps
vim.g.mapleader = ' '

vim.keymap.set ('n', '<C-d>', '<C-d>zz')
vim.keymap.set ('n', '<C-u>', '<C-u>zz')

vim.keymap.set ('v', '<leader>y', '"+y')
vim.keymap.set ('n', '<leader>y', '"+y')
vim.keymap.set ('n', '<leader>Y', '"+Y')
vim.keymap.set ('n', '<leader>p', '"+p')

vim.keymap.set ('n', 'n', 'nzzzv')
vim.keymap.set ('v', '<S-j>', ":m '>+1<cr>gv=gv") -- Move selected text up/down
vim.keymap.set ('v', '<S-k>', ":m '<-2<cr>gv=gv") -- Move selected text up/down
vim.keymap.set ('v', '<', '<gv')                  -- Stay in indent mode
vim.keymap.set ('v', '>', '>gv')                  -- Stay in indent mode
vim.keymap.set ('n', '<S-j>', 'mzJ`z')            -- Append next line to current line

vim.keymap.set('x', '<leader>p','\'_dP')          -- Keep yanked visual selection to paste recurrently

vim.keymap.set ('n', '<C-n>', '<cmd>cnext<cr>zz')
vim.keymap.set ('n', '<C-p>', '<cmd>cprev<cr>zz')
vim.keymap.set ('n', '<leader>k', '<cmd>lnext<cr>zz')
vim.keymap.set ('n', '<leader>j', '<cmd>lprev<cr>zz')

vim.keymap.set ('n', '<leader>x', '<cmd>!chmod +x %<cr>', {silent = true})

-- Basic movements for splits
vim.keymap.set ('n', '<C-j>', '<C-W><C-j>')
vim.keymap.set ('n', '<C-k>', '<C-W><C-k>')
vim.keymap.set ('n', '<C-l>', '<C-W><C-l>')
vim.keymap.set ('n', '<C-h>', '<C-W><C-h>')

-- Resize splits
vim.keymap.set ('n', '<M-h>', '<C-W>5>')
vim.keymap.set ('n', '<M-l>', '<C-W>5<')
vim.keymap.set ('n', '<M-j>', '<C-W>+')
vim.keymap.set ('n', '<M-k>', '<C-W>-')

-- Deadkeys
vim.keymap.set('i', "'a", 'á', {})
vim.keymap.set('i', "'e", 'é', {})
vim.keymap.set('i', "'i", 'í', {})
vim.keymap.set('i', "'o", 'ó', {})
vim.keymap.set('i', "'u", 'ú', {})
vim.keymap.set('i', "'A", 'Á', {})
vim.keymap.set('i', "'E", 'É', {})
vim.keymap.set('i', "'I", 'Í', {})
vim.keymap.set('i', "'O", 'Ó', {})
vim.keymap.set('i', "'U", 'Ú', {})
vim.keymap.set('i', "~n", 'ñ', {})
vim.keymap.set('i', "~N", 'Ñ', {})

-- Netrw
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore 30<cr>')
