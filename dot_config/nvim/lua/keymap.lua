local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- [[ Leader ]]
vim.g.mapleader = ';'

-- [[ Basic ]]
map('i', 'jk', '<esc>', opts)
map('i', 'kj', '<esc>', opts)

-- [[ Window ]]
map('n', '<leader>w', '<C-w><C-w>', opts)

-- [[ Files ]]
map('n', '<leader><space>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<space>fb', '<cmd>Telescope file_browser<cr>', opts)

-- [[ Diagnostics, Competion, and Others ]]
map('n', '[g', '<Plug>(coc-diagnostic-prev)', opts)
map('n', ']g', '<Plug>(coc-diagnostic-next)', opts)

map('n', 'gd', '<Plug>(coc-definition)', opts)
map('n', 'gy', '<Plug>(coc-type-definition)', opts)
map('n', 'gi', '<Plug>(coc-implementation)', opts)
map('n', 'gr', '<Plug>(coc-references)', opts)

map('n', '<leader>rn', '<Plug>(coc-rename)', opts)

map('n', 'K', '<cmd>call ShowDocumentation()<cr>', opts)
