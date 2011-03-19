set nocompatible	" Use gVim defaults

" set tw=80		 tw to specify a default text width
set fo=tcrq		" fo to specify default formatoptions
" t auto-wraps text using textwidth
" c auto-wraps comments using textwidth
" r auto-inserts the current comment leader
" q allows formatting of comments

" allow backspacing over everything in insert mode
set backspace=2

" Set font
set guifont=ProggyClean

" Switch off tool bar
set guioptions-=T
set guioptions+=a

" Set up tabs of 4 & sensible C indentation
set tabstop=4
set shiftwidth=4
set cinoptions=>s,e0,n0,f0,{0,}0,^0,:s,=s,ps,t0,c3,+s,(2s,us,)20,*30,gs,hs

set nobackup
set expandtab           " Tabs are expanded to spaces

source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

set path=**

" colorscheme blue
colorscheme desert

set clipboard=unnamed
" set selectmode=mouse
set mouse=a

" Set up search path for tags
set tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 0 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

set ignorecase 
set smartcase

" Sensible setup for tabbing (none in python, tabs in everything else)
autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType xml set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType cs set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType build set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

" Set up horizontal line wrapping (off) and scroling
set nowrap
set sidescrolloff=1
set sidescroll=1
set virtualedit=all
map <C-c> "+y<CR>

set makeprg=D:\fifa09\nant.bat\ -masterconfigfile:../../../../masterconfig.xml\ -D:userenderware=true\ -D:config=xenon-vc-debug

" give a list of reaults for competion
set wildmode=list:longest

" Use relative numbers or just normal line numbers
" set number
set relativenumber  

" http://vim.wikia.com/wiki/Page_up/down_and_keep_cursor_position
nnoremap <silent> <PageUp> <C-U><C-U>
vnoremap <silent> <PageUp> <C-U><C-U>
inoremap <silent> <PageUp> <C-\><C-O><C-U><C-\><C-O><C-U>

nnoremap <silent> <PageDown> <C-D><C-D>
vnoremap <silent> <PageDown> <C-D><C-D>
inoremap <silent> <PageDown> <C-\><C-O><C-D><C-\><C-O><C-D>

" f11 to view for yank buffer buffer 
nnoremap <silent> <F11> :YRShow<CR> 

" show more command in history. 
set history=1000


" Auto-backup files and .swp files don't go to pwd
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" try to use more very magic 
map / /\v
map ? ?\v
