execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype plugin on

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

set omnifunc=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

autocmd FileType tex source ~/.vim/bundle/auctex.vim/ftplugin/auctex.vim

"some work related stuff
au BufRead,BufNewFile,BufEnter */nomis/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
au BufRead,BufNewFile,BufEnter */pluto-sites/* setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" Neocomplete settings
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

set t_Co=256

set ttyfast

set tabline=%!MyTabLine()  " custom tab pages line
function MyTabLine()
        let s = '' " complete tabline goes here
        " loop through each tab page
        for t in range(tabpagenr('$'))
                " set highlight
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " set the tab page number (for mouse clicks)
                let s .= '%' . (t + 1) . 'T'
                let s .= ' '
                " set page number string
                let s .= t + 1 . ' '
                " get buffer names and statuses
                let n = ''      "temp string for buffer names while we loop and check buftype
                let m = 0       " &modified counter
                let bc = len(tabpagebuflist(t + 1))     "counter to avoid last ' '
                " loop through each buffer in a tab
                for b in tabpagebuflist(t + 1)
                        " buffer types: quickfix gets a [Q], help gets [H]{base fname}
                        " others get 1dir/2dir/3dir/fname shortened to 1/2/3/fname
                        if getbufvar( b, "&buftype" ) == 'help'
                                let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
                        elseif getbufvar( b, "&buftype" ) == 'quickfix'
                                let n .= '[Q]'
                        else
                                let n .= pathshorten(bufname(b))
                        endif
                        " check and ++ tab's &modified count
                        if getbufvar( b, "&modified" )
                                let m += 1
                        endif
                        " no final ' ' added...formatting looks better done later
                        if bc > 1
                                let n .= ' '
                        endif
                        let bc -= 1
                endfor
                " add modified label [n+] where n pages in tab are modified
                if m > 0
                        let s .= '[' . m . '+]'
                endif
                " select the highlighting for the buffer names
                " my default highlighting only underlines the active tab
                " buffer names.
                if t + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " add buffer names
                if n == ''
                        let s.= '[New]'
                else
                        let s .= n
                endif
                " switch to no underlining and add final space to buffer list
                let s .= ' '
        endfor
        " after the last tab fill with TabLineFill and reset tab page nr
        let s .= '%#TabLineFill#%T'
        " right-align the label to close the current tab page
        if tabpagenr('$') > 1
                let s .= '%=%#TabLineFill#%999Xclose'
        endif
        return s
endfunction
