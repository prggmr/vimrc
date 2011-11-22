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

    set ruler   " Display line and column information

    set clipboard=unnamed

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
colorscheme rastafari 

" Autoopen NerdTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * NERDTreeMirror

" NERDTree options
" Ignore python compiled files and .DS_STORE
let NERDTreeIgnore=['\.pyc','\.DS_Store']
" Show Bookmarks panel
let NERDTreeShowBookmarks=1
" Show Hidden files
let NERDTreeShowHidden=1
" Highlight current nerd line
let NERDTreeHighlightCursorline=1

" Turn on line numbers
set nu

" MACVIM GUI Specific {
if has('gui_running')
    " Set Courier Font
    set guifont=Courier
    " Add a little spacing between lines
    set linespace=1
    " Set the transparency of the background window to expose the rasta lion
    set transparency=30
endif
" }
