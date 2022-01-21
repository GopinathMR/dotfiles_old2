" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#5f5fff' gui=underline ctermfg=33 ctermbg=15 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ff5fcc' gui=underline ctermfg=33 ctermbg=87 cterm=underline
augroup END

let g:qs_max_chars=150
