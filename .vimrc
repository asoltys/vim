" GENERAL OPTIONS

set nocp
set ruler
set listchars=tab:>-,trail:�,eol:$
set shortmess=atI
set visualbell
set confirm
set viminfo='20,<50,s10,h,%

syntax on 
filetype plugin on
colorscheme wombat 

" BACKUPS

set nobackup
set nowritebackup
set noswapfile
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set nohlsearch
set history=1000

" INDENTING

set smartindent 
set softtabstop=2 
set shiftwidth=2
set tabstop=2
set expandtab
set bs=2
set backspace=indent,eol,start

" SEARCHING

set gp=grep\ -nr
set ignorecase
set smartcase
set title
set scrolloff=3
set incsearch

" GENERAL AUTOCOMPLETION

set omnifunc=xmlcomplete#CompleteTags
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-p> pumvisible() ? '<C-p>' : '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

" COLDFUSION AUTOCOMPLETION 

set dict+=~/.vim/dict/cf.dict
set complete-=k complete+=k

" use Ctrl-j to jump to and from stard and end tags.
" use Ctrl-k to wrap selected text in a tag.
" use Ctrl-l to complete tags.  Twice to open a new line and autoindent.
nmap <C-j> <LocalLeader>5
vmap <C-j> <LocalLeader>5
vmap <C-k> <LocalLeader>x
let xml_tag_completion_map = "<C-l>"


" CUSTOM MAPPINGS

let mapleader = ","
nmap <silent> <leader>s :set nolist!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
noremap <C-e><C-l> :so ~/.vimrc<CR>
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
inoremap <C-z> <Esc>dbxi
inoremap </ </<C-X><C-O><Esc>v<<
vnoremap <C-c> "+y
noremap <C-v> "+p
nnoremap ' `
nnoremap ` '

" FILE FINDER

let g:fuzzy_matching_limit=20
let g:fuzzy_ceiling=50000
let g:fuzzy_ignore="vendor/*;*.jpg;*.gif;.git/*"
let g:NERDTreeChDirMode=2

" SESSION MANAGER

" let g:session_autoload=1
" let g:session_autosave=1

" TAG AUTOCLOSING
au FileType xhtml,xml,cfm,html so ~/.vim/ftplugin/html_autoclosetag.vim
