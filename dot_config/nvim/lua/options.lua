local opt = vim.opt

-- [[ General ]]
opt.title = true
opt.hidden = false
opt.mouse = 'a'
opt.ttimeoutlen = 0
opt.updatetime = 300
opt.signcolumn = 'yes'
opt.ttyfast = true
opt.guifont = 'Hack Nerd Font Mono'

-- [[ Editor ]]
opt.clipboard = 'unnamedplus'
opt.completeopt = 'noinsert,menuone,noselect'

-- [[ Context ]]
opt.number = true
opt.relativenumber = true

-- [[ Filetypes ]]
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- [[ Theme ]]
opt.syntax = 'ON'
opt.termguicolors = true

-- [[ Search ]]
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- [[ Whitespace ]]
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2

-- [[ Splits ]]
opt.splitright = true
opt.splitbelow = true

-- [[ Swap & Backup ]]
opt.swapfile = false
opt.backup = false
opt.writebackup = false
