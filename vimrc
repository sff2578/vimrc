execute pathogen#infect()
syntax on
filetype plugin indent on

" Custom tab shit
set shiftwidth=4
set softtabstop=4
set tabstop=8
set autoindent
set smartindent

" enable php complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" complete color
highlight Pmenu ctermbg=lightblue ctermfg=white

inoremap jk <Esc>
