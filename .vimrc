" Highlight syntax
syntax on 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ackyshake/VimCompletesMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Mac backspace fix
set backspace=indent,eol,start

" 80 char column width
" set colorcolumn=80

" Color scheme
syntax enable
set background=light
colorscheme solarized
"colorscheme desert
"set background=dark

" NERDTREE open/close
nmap <F6> :NERDTreeToggle<CR>

" Tagbar open
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" Turn off auto indent on pasting text
" set paste


set number

set hidden

" Auto fold save
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END


nnoremap <silent> <C-a> :NERDTreeToggle<CR>
nnoremap <silent> <C-s> :setlocal number!<CR>
nnoremap <silent> <C-d> :set background=dark<CR> :colorscheme desert <CR>
nnoremap <silent> <C-l> :set background=light<CR> :colorscheme solarized <CR>

