"          __                        ________   __
"  _______/  |______ _______  ______/   __   \_/  |_
" /  ___/\   __\__  \\_  __ \/  ___/\____    /\   __\
" \___ \  |  |  / __ \|  | \/\___ \    /    /  |  |
"/____  > |__| (____  /__|  /____  >  /____/   |__|
"     \/            \/           \/
"
" https://github.com/stars9t

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
""""""""""""""""""""""""""""""""""""""""""""
"Lightline
Plugin 'itchyny/lightline.vim'
"File three
Plugin 'preservim/nerdtree'
"Syntax highlite for vim
Plugin 'cespare/vim-toml'
"IndentGuides
Plugin 'nathanaelkane/vim-indent-guides'
"Colorschemes
Plugin 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plugin 'joshdick/onedark.vim'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'artanikin/vim-synthwave84'
Plugin 'morhetz/gruvbox'
Plugin 'wadackel/vim-dogrun'
Plugin 'kaicataldo/material.vim', { 'branch': 'main' }
Plugin 'yuttie/hydrangea-vim'
""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()

" Not support vi 
set nocompatible

syntax on
filetype plugin indent on

"Indent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

"Vim-indent-guides and indent colors
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#565264 ctermbg=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#706677 ctermbg=1

"Disable extra files
set noswapfile
set nobackup

"Random settings
set mousehide
set t_vb=
set showtabline=1
set wrap
set linebreak
set clipboard=unnamed
set hidden

"Set number
set relativenumber
"set ruler

"Enable 256 colors for alacritty terminal
if &term == "alacritty"
  let &term = "xterm-256color"
endif

"Lightline 
set laststatus=2
set noshowmode

"Python settings
let python_highlighting_all = 1
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"Enable all terminal colors
set t_Co=256

"NerdThree
map <C-n> :NERDTreeToggle<CR>

"Working with new tabs 
nnoremap <C-t> :tabnew<Enter>
nnoremap <Left> :tabp<Enter>
nnoremap <Right> :tabn<Enter>

"Theme
"Transparent background only for daycula
let g:daycula_transparent_background=1
set termguicolors
colorscheme daycula
set background=dark

"Transparent background for all themes
"hi NonText     ctermbg=NONE guibg=NONE
"hi Normal      ctermbg=NONE guibg=NONE
"hi LineNr     	ctermbg=NONE guibg=NONE
"hi SignColumn 	ctermbg=NONE guibg=NONE

let g:lightline = {
      \ 'colorscheme': 'daycula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"Rust and python style fix
let g:python_recommended_style=0
let g:rust_recommended_style=0
let g:rustfmt_autosave=1


packloadall
silent! helptags ALL
