execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

colorscheme neon

set nu
set autoindent
set smartindent
set backupdir=~/.vimtmpfiles
set directory=~/.vimtmpfiles
set incsearch
set guitablabel=%N:%M%t "Show tab numbers

"set the tab to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"show the name of the file that is edited
set laststatus=2

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

autocmd FileType tex source ~/.vim/bundle/auctex.vim/ftplugin/auctex.vim

"some work related stuff
au BufRead,BufNewFile,BufEnter */nomis/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto-sites/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Neocomplete settings
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
