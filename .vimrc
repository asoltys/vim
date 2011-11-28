" CUSTOM MAPPINGS
call pathogen#infect()

let mapleader = ","
map ,cd :cd %:p:h<CR>
map ,f :let g:fuzzy_roots=[getcwd()]<CR>:ruby @finder=nil<CR>
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
noremap <C-f> :CommandT<CR>
noremap <C-b> :CommandTBuffer<CR>
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
inoremap <C-k> <Up>
nnoremap <C-CR> i<CR><Esc>
inoremap <C-CR> <CR><CR><Up><Tab>
" nnoremap <C-a> ggvG$
nnoremap <C-e> <C-q>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <M-z> :NERDTree %:p:h<CR>
nnoremap K Jx

" GENERAL SETTINGS

set nocp
set ruler
set listchars=tab:>-,trail:·,eol:$
set shortmess=atI
set cmdheight=2
set visualbell
set statusline+=\ %{getline('.')[col('.')-1]},\ %b,\ 0x%B
" set statusline=%{fugitive#statusline()}%#StatusLine#
set number
set hidden
set history=1000
set nowrap

syntax on
filetype plugin on
au BufNewFile,BufRead *.ru set filetype=ruby

" THEME

set t_Co=256
set background=light
set guifont=DejaVu\ Sans\ Mono\ 12
colorscheme solarized

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

" RAGTAG

let g:ragtag_global_maps = 1

" NERDTREE

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

" GIST
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_clip_command = 'xclip -selection clipboard'

" HIGHLIGHT TEXT PAST 80 COLUMNS

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" REMOVE TRAILING WHITESPACE
" autocmd BufWritePre * :%s/\s\+$//e
"

" MINI BUF EXPLORER
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplMapWindowNavArrows = 1

au WinLeave * set nocursorline 
au WinEnter * set cursorline 
set cursorline 

command! -bar -nargs=0 SudoW :silent exe "write !sudo tee % >/dev/null" | silent edit!
let g:ruby_debugger_debug_mode = 1
