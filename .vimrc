set nocompatible              " Vundle: be iMproved, required
filetype off                  " Vundle: required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
syntax enable

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'rstacruz/sparkup'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'shawncplus/phpcomplete.vim'
call vundle#end()            " Vundle: required
filetype plugin indent on    " Vundle: required

let g:ycm_autoclose_preview_window_after_insertion = 1

colorscheme neodark

set nu

set laststatus=2 "show the name of the file that is edited

au BufRead,BufNewFile *.rs set filetype=rust

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsListSnippets="<c-s>"

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

let g:tagbar_ctags_bin="~/.vim/ctags"

set backupdir=~/.vimtmpfiles
set directory=~/.vimtmpfiles
set incsearch
set hlsearch
