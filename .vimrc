set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'


Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

call vundle#end()
filetype plugin indent on

set number
" set ruler
" syntax enable
syntax on
set wrap
set linebreak
set cursorline
set showcmd

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

set expandtab
set softtabstop=4
set shiftwidth=4
" set autoindent
set smartindent

set t_Co=256

set ignorecase
set smartcase


set laststatus=2

colorscheme jellybeans

let mapleader=","

let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}

noremap Y y$

" upper/lower word
noremap <leader>u mQviwU'Q
noremap <leader>l mQviwu'Q

" nmap <leader>w :w<CR>
noremap <C-s> :w<CR>
inoremap <C-s> <esc>:w<CR>
noremap <leader>q :q<CR>
noremap <silent> Q :q!<CR>

" Map ctrl-movement keys to window switching
noremap <C-k> <C-w><Up>
noremap <C-j> <C-w><Down>
noremap <C-l> <C-w><Right>
noremap <C-h> <C-w><Left>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * NERDTree /home/alex/hexlet/php/oop

noremap <C-\> :NERDTreeFind<CR>
noremap <silent> <leader><leader> :NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$']

let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowRelativePath=1

nnoremap <leader>b :BufExplorer<CR>

vnoremap <leader>y :w! ~/.vbuf<CR>
noremap <leader>y :.w! ~/.vbuf<CR>
noremap <leader>p :r ~/.vbuf<CR>

" Allows you to tintersudo pass and save the file 
" when you forgot to open your file with sudo 
cnoremap w!! %!sudo tee > /dev/null %

" inoremap <esc>    <NOP>
inoremap <UP>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <bs>    <NOP>
noremap <UP>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <bs>    <NOP>

" Make Ctrl-e jump to the end of the line in the insert mode.
inoremap <C-e> <C-o>$

" Quickly select the text I just pasted.
noremap gV `[v`]

" if has("autocmd")
"     autocmd bufwritepost .vimrc source $MYVIMRC
" endif

nnoremap ' `
nnoremap ` '

" Jump to the previous/next tab.
noremap <silent> J gT
noremap <silent> K gt

" Join lines by <Leader>+j because I use J to go to the previous tab.
noremap <leader>j J

" nmap <leader>v :tabedit $MYVIMRC<CR>
noremap <leader>v :vsplit $MYVIMRC<CR>
noremap <leader>sv :source $MYVIMRC<CR>

noremap 2o o<CR>
noremap 2O O<Esc>O

" Toggle paste modle
noremap <silent> <F4> :set invpaste<CR>:set paste?<CR> 
inoremap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

onoremap p i(
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>

noremap <leader>H :vsplit<cr>

nnoremap <leader>N :setlocal number!<cr>
