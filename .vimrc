" CUSTOM MAPPINGS

let mapleader = ","
nmap <silent> <leader>s :set nolist!<CR>
nmap <C-q> :bn <bar> bw #<CR>
imap <C-q> <Esc>:wq<CR>
nmap <C-s> :w!<CR>
imap <C-s> <Esc>:w!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
noremap <C-y> <C-r>
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :FuzzyFinderTextMate<CR>
noremap <C-b> :FuzzyFinderBuffer<CR>
nnoremap <C-x> :BufOnly<CR>
noremap <C-z> :NERDTreeToggle<CR>
inoremap <C-z> <Esc>dbxi
inoremap <, </<C-X><C-O><Esc>v<<
vnoremap <C-c> "+y
vnoremap <C-b> :s/^/# <CR>
vnoremap <C-d> :s/^# //<CR>
nnoremap <C-m> <C-v>
noremap <C-v> "+p
inoremap <C-v> <Esc>"+pa
nnoremap <C-h> :vert bel help<Space>
nnoremap ' `
nnoremap ` '
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
nnoremap <C-CR> i<CR><Esc>
inoremap <C-k> <Up>" GENERAL OPTIONS
nnoremap <C-M> <C-Q>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l

" GENERAL SETTINGS

set nocp
set ruler
set listchars=tab:>-,trail:·,eol:$
set shortmess=atI
set visualbell
set statusline=%{fugitive#statusline()}%#StatusLine#
set number
set hidden
set history=1000

syntax on 
filetype plugin on

" DIFF MODE THEME

if &diff
set t_Co=256
colorscheme peaksea
else
colorscheme wombat 
endif

" BACKUPS

set nobackup
set nowritebackup
set noswapfile
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

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
set nohlsearch

" GENERAL AUTOCOMPLETION

" set omnifunc=xmlcomplete#CompleteTags
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <C-p> pumvisible() ? '<C-p>' : '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

" COLDFUSION AUTOCOMPLETION 

set dict+=~/.vim/dict/cf.dict
set complete-=k complete+=k

" RAG TAG

let g:ragtag_global_maps = 1

" FILE FINDER

let g:fuzzy_matching_limit=20
let g:fuzzy_ceiling=50000
let g:fuzzy_ignore="vendor/*;*.jpg;*.gif;.git/*"
let g:NERDTreeChDirMode=2

" SESSION MANAGER

let g:session_autoload=1
let g:session_autosave=1

" SINGLE CHARACTER INSERTION

function! RepeatChar(char, count)
 return repeat(a:char, a:count)
endfunction

nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
nnoremap S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

" HIGHLIGHT TEXT PAST 80 COLUMNS

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

au VimEnter * !stty -ixon
au VimLeave * !stty ixon
