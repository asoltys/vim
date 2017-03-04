set shell=/bin/bashschickling/vim-bufonly'
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'juvenn/mustache.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'groenewege/vim-less'
Plugin 'chriskempson/base16-vim.git'
Plugin 'OrangeT/vim-csharp.git'
Plugin 'posva/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'asoltys/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim.git'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'Shougo/vimproc.vim.git'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tmhedberg/matchit'
Plugin 'schickling/vim-bufonly'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/taglist.vim'
Plugin 'xolox/vim-session'
call vundle#end()   
filetype plugin indent on 

nmap gi <Plug>IndentGuidesToggle
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>
map ,cd :cd %:p:h<CR>
nmap <silent> <leader>s :set nolist!<CR>

nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w! <bar> syntax sync fromstart<CR>
inoremap <C-s> <Esc>:w!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
noremap <C-n> :bnext<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :CtrlP<CR>
noremap <C-b> :CtrlPBuffer<CR>
nnoremap Q :CtrlPMRU<CR>
nnoremap <C-x> :BufOnly<CR>
noremap <C-z> :NERDTreeToggle<CR>
inoremap <C-z> <Esc>dbxi
inoremap <lt>/ </<C-X><C-O>
inoremap <lt>, </<C-X><C-O><Esc>v<<
vnoremap <C-c> "+y
vnoremap <C-b> :s/^/# <CR>
nnoremap <C-m> <C-v>
noremap <C-v> "+p
inoremap <C-v> <Esc>"+pa
nnoremap <C-h> :vert bel help<Space>
nnoremap ' `
nnoremap ` '
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
inoremap <C-k> <Up>
nnoremap <C-CR> o<Esc>
nnoremap <Leader>j :SplitjoinSplit<CR>
nnoremap <Leader>k :SplitjoinJoin<CR>
inoremap <C-CR> <C-o>:SplitjoinSplit<CR><C-o>j<C-o>A
nnoremap <C-a> ggvG$
nnoremap <C-e> <C-q>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <S-Up> <C-W>k
nnoremap <S-Down> <C-W>j
nnoremap <M-z> :NERDTree %:p:h<CR>
nnoremap K Jx
noremap qp mqGo<Esc>"qp
noremap qd G"qdd`q
nnoremap > >>
nnoremap < <<
nnoremap <C-a> ggVG
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
inoremap ZZ <Esc>ZZ

" GENERAL SETTINGS

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
set tags=tags;/

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

set wildignore+=*.o,*.obj,.git,node_modules,tags

syntax on


" FILETYPES
au BufNewFile,BufRead *.ru set filetype=ruby
au BufNewFile,BufRead *.json set filetype=php
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.vue set filetype=vue | syntax sync fromstart
autocmd FileType cf set omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType ruby set omnifunc=rubycomplete#CompleteTags
autocmd FileType vue setlocal foldmethod=syntax
autocmd FileType vue setlocal foldlevel=2
let g:html_indent_inctags="html,head,body,li,p,header,footer,a,span,nav"

" THEME
"
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ 14
set linespace=5
colorscheme base16-default-dark

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

" RAGTAG

let g:ragtag_global_maps = 1

" NERDTREE

let g:NERDTreeChDirMode=2

function! HtmlEscape()
  silent s/À/\&Agrave;/eg
  silent s/Á/\&Aacute;/eg
  silent s/Â/\&Acirc;/eg
  silent s/Ã/\&Atilde;/eg
  silent s/Ä/\&Auml;/eg
  silent s/Å/\&Aring;/eg
  silent s/Æ/\&AElig;/eg
  silent s/Ç/\&Ccedil;/eg
  silent s/È/\&Egrave;/eg
  silent s/É/\&Eacute;/eg
  silent s/Ê/\&Ecirc;/eg
  silent s/Ë/\&Euml;/eg
  silent s/Ì/\&Igrave;/eg
  silent s/Í/\&Iacute;/eg
  silent s/Î/\&Icirc;/eg
  silent s/Ï/\&Iuml;/eg
  silent s/Ð/\&ETH;/eg
  silent s/Ñ/\&Ntilde;/eg
  silent s/Ò/\&Ograve;/eg
  silent s/Ó/\&Oacute;/eg
  silent s/Ô/\&Ocirc;/eg
  silent s/Õ/\&Otilde;/eg
  silent s/Ö/\&Ouml;/eg
  silent s/Ø/\&Oslash;/eg
  silent s/Ù/\&Ugrave;/eg
  silent s/Ú/\&Uacute;/eg
  silent s/Û/\&Ucirc;/eg
  silent s/Ü/\&Uuml;/eg
  silent s/Ý/\&Yacute;/eg
  silent s/Þ/\&THORN;/eg
  silent s/ß/\&szlig;/eg
  silent s/à/\&agrave;/eg
  silent s/á/\&aacute;/eg
  silent s/â/\&acirc;/eg
  silent s/ã/\&atilde;/eg
  silent s/ä/\&auml;/eg
  silent s/å/\&aring;/eg
  silent s/æ/\&aelig;/eg
  silent s/ç/\&ccedil;/eg
  silent s/è/\&egrave;/eg
  silent s/é/\&eacute;/eg
  silent s/ê/\&ecirc;/eg
  silent s/ë/\&euml;/eg
  silent s/ì/\&igrave;/eg
  silent s/í/\&iacute;/eg
  silent s/î/\&icirc;/eg
  silent s/ï/\&iuml;/eg
  silent s/ð/\&eth;/eg
  silent s/ñ/\&ntilde;/eg
  silent s/ò/\&ograve;/eg
  silent s/ó/\&oacute;/eg
  silent s/ô/\&ocirc;/eg
  silent s/õ/\&otilde;/eg
  silent s/ö/\&ouml;/eg
  silent s/ø/\&oslash;/eg
  silent s/ù/\&ugrave;/eg
  silent s/ú/\&uacute;/eg
  silent s/û/\&ucirc;/eg
  silent s/ü/\&uuml;/eg
  silent s/ý/\&yacute;/eg
  silent s/þ/\&thorn;/eg
  silent s/ÿ/\&yuml;/eg
endfunction

function! HtmlEscapeNum()
  silent s/?/\&#160;/eg
  silent s/¡/\&#161;/eg
  silent s/¢/\&#162;/eg
  silent s/£/\&#163;/eg
  silent s/¤/\&#164;/eg
  silent s/¥/\&#165;/eg
  silent s/¦/\&#166;/eg
  silent s/§/\&#167;/eg
  silent s/¨/\&#168;/eg
  silent s/©/\&#169;/eg
  silent s/ª/\&#170;/eg
  silent s/«/\&#171;/eg
  silent s/¬/\&#172;/eg
  silent s/?/\&#173;/eg
  silent s/®/\&#174;/eg
  silent s/¯/\&#175;/eg
  silent s/°/\&#176;/eg
  silent s/±/\&#177;/eg
  silent s/²/\&#178;/eg
  silent s/³/\&#179;/eg
  silent s/´/\&#180;/eg
  silent s/µ/\&#181;/eg
  silent s/¶/\&#182;/eg
  silent s/·/\&#183;/eg
  silent s/¸/\&#184;/eg
  silent s/¹/\&#185;/eg
  silent s/º/\&#186;/eg
  silent s/»/\&#187;/eg
  silent s/¼/\&#188;/eg
  silent s/½/\&#189;/eg
  silent s/¾/\&#190;/eg
  silent s/¿/\&#191;/eg
  silent s/À/\&#192;/eg
  silent s/Á/\&#193;/eg
  silent s/Â/\&#194;/eg
  silent s/Ã/\&#195;/eg
  silent s/Ä/\&#196;/eg
  silent s/Å/\&#197;/eg
  silent s/Æ/\&#198;/eg
  silent s/Ç/\&#199;/eg
  silent s/È/\&#200;/eg
  silent s/É/\&#201;/eg
  silent s/Ê/\&#202;/eg
  silent s/Ë/\&#203;/eg
  silent s/Ì/\&#204;/eg
  silent s/Í/\&#205;/eg
  silent s/Î/\&#206;/eg
  silent s/Ï/\&#207;/eg
  silent s/Ð/\&#208;/eg
  silent s/Ñ/\&#209;/eg
  silent s/Ò/\&#210;/eg
  silent s/Ó/\&#211;/eg
  silent s/Ô/\&#212;/eg
  silent s/Õ/\&#213;/eg
  silent s/Ö/\&#214;/eg
  silent s/×/\&#215;/eg
  silent s/Ø/\&#216;/eg
  silent s/Ù/\&#217;/eg
  silent s/Ú/\&#218;/eg
  silent s/Û/\&#219;/eg
  silent s/Ü/\&#220;/eg
  silent s/Ý/\&#221;/eg
  silent s/Þ/\&#222;/eg
  silent s/ß/\&#223;/eg
  silent s/à/\&#224;/eg
  silent s/á/\&#225;/eg
  silent s/â/\&#226;/eg
  silent s/ã/\&#227;/eg
  silent s/ä/\&#228;/eg
  silent s/å/\&#229;/eg
  silent s/æ/\&#230;/eg
  silent s/ç/\&#231;/eg
  silent s/è/\&#232;/eg
  silent s/é/\&#233;/eg
  silent s/ê/\&#234;/eg
  silent s/ë/\&#235;/eg
  silent s/ì/\&#236;/eg
  silent s/í/\&#237;/eg
  silent s/î/\&#238;/eg
  silent s/ï/\&#239;/eg
  silent s/ð/\&#240;/eg
  silent s/ñ/\&#241;/eg
  silent s/ò/\&#242;/eg
  silent s/ó/\&#243;/eg
  silent s/ô/\&#244;/eg
  silent s/õ/\&#245;/eg
  silent s/ö/\&#246;/eg
  silent s/÷/\&#247;/eg
  silent s/ø/\&#248;/eg
  silent s/ù/\&#249;/eg
  silent s/ú/\&#250;/eg
  silent s/û/\&#251;/eg
  silent s/ü/\&#252;/eg
  silent s/ý/\&#253;/eg
endfunction

function! NbspReplace()
  silent s/\(\d\) /\1\&nbsp;/eg
  silent s/ \(\d\)/\&nbsp;\1/eg
  silent s/ :/\&nbsp;:/eg
endfunction

vmap <silent> <c-h> :call HtmlEscape()<CR>
vmap <silent> <c-n> :call NbspReplace()<CR>

let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

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

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&

  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')

  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)

  return escaped_selection
endfunction

" Start the find and replace command across the entire file
vmap <C-r> <Esc>:%s/<c-r>=GetVisual()<cr>/

" Use ag the silver searcher if available instead of ack
if executable('pt')
  let g:ackprg = 'pt'
endif
