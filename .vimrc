execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

set nu
set autoindent
set smartindent
set backupdir=~/.vimtmpfiles
set directory=~/.vimtmpfiles
set incsearch

"set the tab to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"show the name of the file that is edited
set laststatus=2

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"some work related stuff
au BufRead,BufNewFile,BufEnter */nomis/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
