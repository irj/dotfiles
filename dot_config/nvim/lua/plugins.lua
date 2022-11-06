local packer_bootstrap = (function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end)()

require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Autosave
  use 'Pocco81/auto-save.nvim'

  -- Appearance
  use 'navarasu/onedark.nvim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Window
  use 'preservim/nerdcommenter'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Search
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-fzy-native.nvim' }
    }
  }

  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- Git
  -- use 'airblade/vim-gitgutter'
  use 'lewis6991/gitsigns.nvim'

  -- Completion / Linters / Formatters
  use { 'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'gpanders/editorconfig.nvim' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
