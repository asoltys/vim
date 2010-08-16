cd /home/adam
set smartindent 
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set nohlsearch
set hidden
set history=1000
set softtabstop=2 
set shiftwidth=2
set tabstop=2
set expandtab
set bs=2
set nocp
set gp=grep\ -nr
set ignorecase
set smartcase
set title
set scrolloff=3
set ruler
set backspace=indent,eol,start
set incsearch
set listchars=tab:>-,trail:·,eol:$
set shortmess=atI
set visualbell
set confirm
set viminfo='20,<50,s10,h,%
syntax on 
colorscheme wombat 

nmap <silent> <leader>s :set nolist!<CR>
noremap <C-y> <C-r>
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap <C-q> :bn <bar> bw #<CR>
noremap <C-s> :w!<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :FuzzyFinderTextMate<CR>
noremap <C-b> :FuzzyFinderBuffer<CR>
noremap <C-x> :BufOnly<CR>
noremap <C-z> :NERDTreeToggle<CR>
inoremap <C-s> <Esc>:w!<CR>
vnoremap <C-c> "+y
noremap <C-v> "+p
nnoremap ' `
nnoremap ` '

let mapleader = ","

let g:fuzzy_matching_limit=20
let g:fuzzy_ceiling=50000
let g:fuzzy_ignore="vendor/*;*.jpg;*.gif;.git/*"

let g:NERDTreeChDirMode=2
