" be iMproved
set nocompatible
set modeline
set formatoptions=tcq
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" Default settings
syntax on
set ruler
set nowrap
set number
set showmode
set noswapfile
set nobackup
set splitright
set splitbelow
set encoding=utf-8
set autoread
set fileformats=mac,unix,dos
set incsearch
set hlsearch
set ignorecase
set smartcase
set expandtab
set ts=2 sts=2 sw=2
set autoindent
set smartindent
set cursorline
set noerrorbells
set list
set listchars=tab:▒░,trail:▓
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_solarized_gb='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" File specific settings
"au BufRead,BufNewFile *.ps1 set filetype=powershell
"au BufRead,BufNewFile *.ps1 set syntax=ps1
autocmd FileType python setl ts=4 sts=4 sw=4
autocmd FileType gitcommit,markdown,text setl nosmartindent spell tw=80 wrapmargin=2

" Custom mappings
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
vnoremap <silent> <Tab> >
vnoremap <silent> <S-Tab> <
nnoremap <silent> <leader>t  :tabnew<CR>
nnoremap <silent> <leader>w :tabclose<CR>
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <C-b> :tabprevious<CR>
nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
