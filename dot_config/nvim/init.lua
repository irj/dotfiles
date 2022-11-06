require 'globals'
require 'options'
require 'keymap'
require 'plugins'

for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath('config') .. '/lua/plugins', [[v:val =~ '\.lua$']])) do
  require('plugins.' .. file:gsub('%.lua$', ''))
end
