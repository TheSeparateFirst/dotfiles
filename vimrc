""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Jeffrey Murray <a.separate.first@gmail.com
"
" TODO: Add more amix.dk/vim/vimrc.html
"

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Language Support
"""""""""""""""""""""""""""""""""""""""""""""""""

let clj_highligh_builtins = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700

" filetype detection
filetype plugin on
filetype indent on

" Auto-reload file when changed
set autoread

"Map a leader for extra c-c-combos
" <leader>w saves current file, etc.
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>

" Easy access to .vimrc
map <leader>e :e! ~/.vimrc<cr>

" Auto-reload .vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""
" => UI Mods
""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show position

set cmdheight=2 "Command Bar height

set hid "Change buffer - without saving

" Backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase " Ignore search case
set smartcase

set hlsearch " Highlighting searches

set incsearch "Make search act sanely
set nolazyredraw "Don't redraw in macros

set magic "Magic on for regex

set showmatch "Matching parens!
set mat=2

"No sound
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set number "Line numbering

""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax!

set gfn=Monospace\ 10
set shell=/bin/bash

  set nonu

set encoding=utf8
try
  lang en_US
catch
endtry

set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
"set nobackup
"set nowb
"set noswapfile

"Persistent undo
try
    if MySys() == "windows"
      set undodir=C:\Windows\Temp
    else
      set undodir=~/.vim_runtime/undodir
    endif

    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, Tabs, and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set softtabstop=4

set lbr
set tw=500

set ai "auto indent
set si "smartindent
set wrap "wrapping


""""""""""""""""""""""""
" => Visual Mode Related
""""""""""""""""""""""""
" Really useful!
" In Visual mode, press * or # to search for current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
