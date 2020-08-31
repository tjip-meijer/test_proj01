"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/
"source $HOME/.config/nvim/plug-config/rnvimr.vim
"source $HOME/.config/nvim/plug-config/fzf.vim

if  !exists('g:vscode')

let mapleader =" "

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'tpope/vim-surround'
"Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'lukesmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
Plug 'tpope/vim-commentary'
Plug 'kovetskiy/sxhkd-vim'
Plug 'ap/vim-css-color'
Plug 'unblevable/quick-scope'
" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()
"=======================
syntax on

set bg=light
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set nocompatible
set encoding=utf-8
set number relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nowrap
set smartindent
set incsearch
set splitbelow splitright
set hidden

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap c "_c
filetype plugin on

" Enable autocompletion:
set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"---vimwiki----
"map <leader>v :VimwikiIndex
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/Documents/Vimwiki', 'syntax': 'markdown', 'ext': '.md'},
			\{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'},
			\{'path': '~/vimwiki1', 'syntax': 'markdown', 'ext': '.md'},
			\{'path': '~/vimwiki2', 'syntax': 'markdown', 'ext': '.md'}]



"------ Goyo plugin makes text more readable when writing prose:------
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

"----Netrw--------
let g:netrw_banner = 0			" Hide banner
let g:netrw_liststyle = 3	  " Tree style
let g:netrw_winsize = 80
let g:netrw_browse_split = 2
let g:netrw_altv = 1				" opens a window at right side

endif
