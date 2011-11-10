" About {
"
"   This is the personal .vimrc file of Nickolas Whiting
"   Inspired by Steve Francia's .vimrc
"   
"   This is highly customized for use on my T60 OSX
"   Use as you like, I'm @ http://prggmr.org if you want to find me
"}

" Environment {
    
    set history=1000    " Save a ton of history because we can
 
    filetype plugin on  " Auto detect file type
    filetype indent on

    set mouse=a    " Auto enable the mouse

    set spell   " Enable spell checking

" }

" Key Modifiers {

    let mapleader = ","    " Use the , as our key leader
    
    " Quick Save
    nmap <leader>w :w!     
    " Move buffer using ,+Space
    nmap <leader>  <C-W>W
    " Move Previous tab (,+-)
    nmap <leader>- :tabp
    " Move Next tab (,++)
    nmap <leader>+ :tabn
    " Move next page (,+f)
    nmap <leader>F <C-F>
    " Move previous page (,+b)
    nmap <leader>B <C-B>

" } 


" Ignore case when searching
set ignorecase

" Show matching braces
set showmatch

" Disable auto backup
set nobackup
set nowb
set noswapfile

" Tabs instead of spaces
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Turn on syntax highlighting and set default colorscheme
syntax on
colorscheme xoria256

" Autoopen NerdTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * NERDTreeMirror

" NERDTree options
" Ignore python compiled files and .DS_STORE
left NERDTreeIgnore=['\*.pyc$','*.DS']

" Turn on line numbers
set nu

