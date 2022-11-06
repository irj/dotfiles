require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
    },
  },
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('file_browser')
