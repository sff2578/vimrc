execute pathogen#infect()
syntax on
filetype plugin indent on

" Custom tab shit
set shiftwidth=4
set softtabstop=4
set tabstop=8
set autoindent
set smartindent
set nu
set noic
set updatetime=250

" enable php complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" New split window is n columns wide.
" commented out because is not working
let g:bufExplorerSplitVertSize=50
let g:bufExplorerSplitHorzSize=10

" complete color
highlight Pmenu ctermbg=lightblue ctermfg=white

inoremap jk <Esc>
map ff :Flisttoggle <CR>

" delete a word after or around the cursor
map <C-d> <C-[>diwi

" search within the selected block
function! RangeSearch(direction)
  call inputsave()
  let g:srchstr = input(a:direction)
  call inputrestore()
  if strlen(g:srchstr) > 0
    let g:srchstr = g:srchstr.
          \ '\%>'.(line("'<")-1).'l'.
          \ '\%<'.(line("'>")+1).'l'
  else
    let g:srchstr = ''
  endif
endfunction
vnoremap <silent> / :<C-U>call RangeSearch('/')<CR>:if strlen(g:srchstr) > 0\|exec '/'.g:srchstr\|endif<CR>
vnoremap <silent> ? :<C-U>call RangeSearch('?')<CR>:if strlen(g:srchstr) > 0\|exec '?'.g:srchstr\|endif<CR>
