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

" complete color
highlight Pmenu ctermbg=lightblue ctermfg=white

inoremap jk <Esc>
map ff :Flisttoggle <CR>

" delete a word after or around the cursor
map <C-d> <C-[>diw
