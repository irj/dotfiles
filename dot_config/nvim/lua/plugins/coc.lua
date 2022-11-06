vim.cmd([[

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

autocmd CursorHold * silent call CocActionAsync('highlight')

]])

vim.g.coc_global_extensions = {
  'coc-tsserver',
  'coc-pyright',

  'coc-eslint',
  'coc-prettier'
}
