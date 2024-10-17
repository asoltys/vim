set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.fzf
call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim'
Plug 'wincent/ferret'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'NLKNguyen/papercolor-theme'
Plug 'schickling/vim-bufonly'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'michaeljsmith/vim-indent-object'
Plug 'evanleck/vim-svelte', { 'branch': 'main' }
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'ervandew/supertab'
Plug 'dense-analysis/ale'
Plug 'kana/vim-fakeclip'
Plug 'rhysd/conflict-marker.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
call plug#end()
filetype plugin indent on 
set omnifunc=syntaxcomplete#Complete

packadd! matchit
runtime macros/matchit.vim

" GENERAL SETTINGS
"
set vb t_vb=     " no visual bell & flash
set autoread
set encoding=utf8
set nocp
set ruler
set listchars=tab:>-,trail:·,eol:$
set shortmess=atI
set cmdheight=2
set visualbell
set statusline+=\ %{getline('.')[col('.')-1]},\ %b,\ 0x%B
set number
set hidden
set history=1000
set wrap
set tags=./tags,./TAGS,tags;~,TAGS;~
"
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"
set wildignore+=*.o,*.obj,.git,node_modules,tags,*.swp,rusty-tags.vi
"
syntax on
"
" BACKUPS
"
set nobackup
set nowritebackup
set noswapfile
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
"
" INDENTING
"
set smartindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set bs=2
set backspace=indent,eol,start
"
" SEARCHING
"
set gp=grep\ -nr
set ignorecase
set smartcase
set title
set scrolloff=3
set incsearch
set nohlsearch
"
" NERDTREE
"
let g:NERDTreeChDirMode=2
"
" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! EscapeString (string)
  let string=a:string
  " Escape regex characters
  let string = escape(string, '^$.*\/~[]')
  " Escape the line endings
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction
"
" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
"
  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')
"
  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
"
  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)
"
  return escaped_selection
endfunction
"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1                                              
"
highlight LineNr ctermbg=black
"
set ttymouse=xterm2
set mouse=a
"
let g:rustfmt_autosave = 1
"
au BufRead *.rs :setlocal tags=./rusty-tags.vi;/
au BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
au FileType svelte set omnifunc=xmlcomplete#CompleteTags
au FileType vue set omnifunc=xmlcomplete#CompleteTags
au BufNewFile,BufRead *.ino set filetype=cpp
au FileType gitcommit setlocal tw=72
filetype indent plugin on
"
let g:fzf_layout = { 'down': '40%' }

syntax on
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"
set background=dark
colorscheme PaperColor

nnoremap ]q :cnext<CR>
nnoremap [q :cprev<CR>
nmap gi <Plug>IndentGuidesToggle
nnoremap <silent> <Leader>n :set number!<CR>
noremap <Leader>v v^o$h
nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w! <bar> syntax sync fromstart<CR>
inoremap <C-s> <Esc>:w!<CR><CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
inoremap <C-l> console.log()<Esc>i
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :Files<CR>
noremap <C-b> :Buffers<CR>
nnoremap <C-x> :BufOnly<CR>
noremap <C-z> :NERDTreeToggle<CR>
inoremap <lt>/ </<C-X><C-O>
vnoremap <C-c> "+y
vnoremap <C-b> :s/^/# <CR>
noremap <C-v> "+p
inoremap <C-v> <Esc>"+pa
nnoremap <C-e> <C-q>
noremap K Jx
nnoremap > >>
nnoremap < <<
inoremap ZZ <Esc>ZZ
nnoremap <Leader>l :ALEFix<CR>
vmap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>/

let g:ale_fixers = {
  \ 'html': ['prettier'],
  \ 'javascript': ['prettier'],
  \ 'typescript': ['prettier'],
  \ 'svelte': ['prettier'],
  \ 'vue': ['prettier']
\}
autocmd User ALEFixPost write
