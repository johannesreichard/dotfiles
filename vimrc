" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd  " Show (partial) command in status line.
"set autowrite  " Automatically save before commands like :next and :make
"set hidden  " Hide buffers when they are abandoned
set mouse=a  " Enable mouse usage (all modes)
set number
set autoindent

" spell checking
setlocal spelllang=de_de

set nocompatible

set modeline
set modelines=5

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8

" some improvements
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" improve searching
set ignorecase
set smartcase       
set gdefault  " always global search
set incsearch
set showmatch
set hlsearch

" jump to oposite bracket
nnoremap <tab> %
vnoremap <tab> %

" textwrap
set wrap
set textwidth=99
set formatoptions=qrn1
set colorcolumn=100

" deactivate help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" autosave
au FocusLost * :wa
set nostartofline  " don't jump to begining of line

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"leader
:let mapleader = ","


"
" key mappings
"
map <F2> :w<CR>
imap <F2> <ESC><F2>i

map <F12> gq}<CR>
imap <F12> <ESC> <F12><ESC>A

map <F8> :set nospell<CR>
imap <F8> <ESC> <F8>i
map <F7> :set spell<CR>
imap <F7> <ESC> <F7>i

" Einfg
map ^[[2~ i
" Entf
map ^? x
" Pos1
map ^[[1~ ^
" Ende
map ^[[4~ $
" down
map ^[[5~ <C-B>
" up
map ^[[6~ <C-F>


" remove trailing whitespace fuckups
" Try the following if your GUI uses a dark background.
":highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" show trailing whitspace exepct when typing at the end of a line
":match ExtraWhitespace /\s\+\%#\@<!$/
" highlighting after leafing insert mode
":autocmd InsertLeave * match ExtraWhitespace /\s\+$\/

" Show trailing whitepace and spaces before a tab:
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
:set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
"hi nonText ctermfg=2

