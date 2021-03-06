" --- dein scripts ---

" --- dein scripts ---

" set dein.vim path
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" check installation dein.vim
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" start setting
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file directory
  let s:toml_dir = expand('~/.vim/rc')

  " load .toml file
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " end setting
  call dein#end()
  call dein#save_state()
endif

" plugin install check
if dein#check_install()
  call dein#install()
endif

" enable synax highlight
syntax enable

" set color scheme
colorscheme onedark

" start unite insertmode
let g:unite_enable_start_insert=1

" --- end dein scripts ---



" --- vim settings ---

" script encoding
scriptencoding utf-8

" backup file
set nobackup
set noswapfile

" auto reload when file changed
set autoread

" no warning when buffer changed
set hidden

" show input command
set showcmd

" use clipboard
set clipboard=unnamed,autoselect

" highlight
set showmatch

" diable line wrap
set nowrap

" move cursor 
set whichwrap=b,s,h,l,<,>,[,],~

" rectangle select
set virtualedit=onemore

" enable backspace
set backspace=indent,eol,start

" show line number
set number

" set terminal title
set title

" always show status bar
set laststatus=2

" ambiwidth double char
set ambiwidth=double

" disable octal
set nrformats-=octal

" insert tab space
set expandtab

" set tab size
set tabstop=4
set shiftwidth=4

" indent setting
set autoindent
set smartindent
set cindent

" incremental search
set incsearch

" smartcase
set ignorecase
set smartcase

" wrap search result
set wrapscan

" highlight search
set hlsearch

" show space
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" status line
set laststatus=2
let g:lightline = { 'colorscheme': 'onedark', }

" --- end vim settings ---



" --- key bindings ---

" toggle highlight EscEsc
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" change to normal mode jj
inoremap <silent>jj <Esc>

" space leader keybind
let mapleader = "\<Space>"

" save file 
nnoremap <Leader>w :w<CR>

" quit vim
nnoremap <Leader>q :q<CR>

" save and quit vim
nnoremap <Leader>wq :wq<CR>

" select line
nnoremap <Leader>a v$ho0
vnoremap <Leader>a $ho0

" unite
nnoremap <Leader>b :Unite buffer<CR>

" unite open current dir
nnoremap <Leader>d :UniteWithBufferDir -buffer-name=files file<CR>

" toggle nerd tree
nnoremap <Leader>t :NERDTreeToggle<CR>

" --- end key bindings ---
