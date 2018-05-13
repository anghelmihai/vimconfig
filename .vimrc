set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
syntax enable
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'tomtom/tlib_vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype on
filetype plugin indent on

colorscheme molokai

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

"set omnifunc=syntaxcomplete#Complete
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"autocmd FileType tex source ~/.vim/bundle/auctex.vim/ftplugin/auctex.vim

"some work related stuff
au BufRead,BufNewFile,BufEnter */nomis/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto-sites/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab


set t_Co=256

set ttyfast
set timeoutlen=1000 ttimeoutlen=10

au BufRead,BufNewFile *.rs set filetype=rust

let g:ycm_autoclose_preview_window_after_insertion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
