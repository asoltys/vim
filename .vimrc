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
" Plug 'sheerun/vim-polyglot'
Plug 'evanleck/vim-svelte', { 'branch': 'main' }
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-user'
Plug 'tmhedberg/matchit'
Plug 'chrisbra/NrrwRgn'
Plug 'Shougo/deol.nvim'
Plug 'posva/vim-vue'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'kana/vim-fakeclip'
Plug 'rhysd/conflict-marker.vim'
Plug 'tomtom/tcomment_vim'
call plug#end()
filetype plugin indent on 
set omnifunc=syntaxcomplete#Complete

packadd! matchit
runtime macros/matchit.vim

" GENERAL SETTINGS

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

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

set wildignore+=*.o,*.obj,.git,node_modules,tags,*.swp

syntax on


" FILETYPES
au BufNewFile,BufRead *.ru set filetype=ruby
au BufNewFile,BufRead *.hbs set filetype=html
au BufRead,BufNewFile *.vue setf=vue
au FileType vue syntax sync fromstart
" let g:html_indent_inctags="html,head,body,p,header,footer,a,span,nav"

" set t_Co=256
set guifont=FiraCode
set linespace=5

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

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1                                              

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

highlight LineNr ctermbg=black

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

set foldmethod=syntax
autocmd Syntax js setlocal foldmethod=syntax
autocmd Syntax json setlocal foldmethod=syntax
autocmd FileType html setlocal foldmethod=syntax
autocmd FileType javascript setlocal commentstring=#\ %s
autocmd FileType pug setlocal commentstring=#\ %s

let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:rooter_patterns = ['package.json', '.git/']

if has("folding")
  set foldenable        " enable folding
  set foldlevelstart=99 " start editing with all folds open

  " toggle folds
  nnoremap <Space> za
  vnoremap <Space> za

  " hi Folded ctermfg=3 ctermbg=18

  " Set a nicer foldtext function
  set foldtext=MyFoldText()
  function! MyFoldText()
    let line = getline(v:foldstart)
    if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
      let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
      let linenum = v:foldstart + 1
      while linenum < v:foldend
        let line = getline( linenum )
        let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
        if comment_content != ''
          break
        endif
        let linenum = linenum + 1
      endwhile
      let sub = initial . ' ' . comment_content
    else
      let sub = line
      let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
      if startbrace == '{'
        let line = getline(v:foldend)
        let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
        if endbrace == '}'
          let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
        endif
      endif
    endif
    let n = v:foldend - v:foldstart + 1
    let info = " " . n . " lines"
    let sub = sub . "                                                                                                                  "
    let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
    let fold_w = getwinvar( 0, '&foldcolumn' )
    let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
    return sub . info
  endfunction

  set fdo-=search
endif

let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\    'html': ['prettier'],
\    'jsx': ['prettier'],
\    'javascript': ['prettier'],
\    'typescript': ['tslint', 'tsserver'],
\    'svelte': ['prettier'],
\    'vue': ['prettier'],
\}
let g:ale_fixers = {
\    'html': ['prettier'],
\    'jsx': ['prettier'],
\    'javascript': ['prettier'],
\    'typescript': ['tslint', 'tsserver'],
\    'svelte': ['prettier'],
\    'vue': ['prettier'],
\}
" let g:ale_echo_cursor = 0
let g:ale_sign_error = ':o'
let g:ale_sign_warning = '.'
" let g:ale_javascript_eslint_executable = 'eslint'
" let g:ale_javascript_eslint_options = ''
" let g:ale_javascript_eslint_suppress_eslintignore = 0
" let g:ale_javascript_eslint_use_global = 0

inoremap {<CR> {<CR>} <C-o>O

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

let g:rustfmt_autosave = 1

set ttymouse=xterm2
set mouse=a
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

let g:ale_echo_msg_format = '%linter% says %s'
let g:ale_fix_on_save = 0
let g:ale_set_highlights = 0
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 0

au FileType svelte set omnifunc=xmlcomplete#CompleteTags
au FileType javascript.jsx set omnifunc=xmlcomplete#CompleteTags
au FileType vue set omnifunc=xmlcomplete#CompleteTags

nnoremap zS :echo join(reverse(map(synstack(line('.'), col('.')), 'synIDattr(v:val,"name")')),' ')<cr>

syntax on
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark
colorscheme PaperColor

let g:markdown_fenced_languages = ['javascript', 'html']

nmap gi <Plug>IndentGuidesToggle
map <Leader>rt :!git ctags<CR>
map <Leader>cd :cd %:p:h<CR>
map <Leader>date :echo system('date')<CR>
nnoremap <silent> <Leader>n :set number!<CR>
nnoremap <Leader>p :set paste!<CR>
noremap <Leader>v v^o$h
nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w! <bar> syntax sync fromstart<CR>
inoremap <C-s> <Esc>:w!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
inoremap <C-l> console.log()<Esc>i
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :Files<CR>
noremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
nnoremap <C-j> :History:<CR>
nnoremap <C-x> :BufOnly<CR>
noremap <C-z> :NERDTreeToggle<CR>
inoremap <C-z> <Esc>dbxi
inoremap <lt>/ </<C-X><C-O>
inoremap <lt>, </<C-X><C-O><Esc>v<<
vnoremap <C-c> "+y
vnoremap <C-b> :s/^/# <CR>
noremap <C-v> "+p
inoremap <C-v> <Esc>"+pa
nnoremap ' `
nnoremap ` '
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
inoremap <C-k> <Up>
nnoremap <C-CR> o<Esc>
nnoremap <C-e> <C-q>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <S-Up> <C-W>k
nnoremap <S-Down> <C-W>j
nnoremap <Leader>c :NERDTree %:p:h<CR>
nnoremap K Jx
noremap qp mqGo<Esc>"qp
noremap qd G"qdd`q
nnoremap > >>
nnoremap < <<
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
inoremap ZZ <Esc>ZZ
nnoremap <silent> gl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>
nnoremap <silent> gh "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <Leader>ts
             \ : if exists("syntax_on") <BAR>
             \    syntax off <BAR>
             \ else <BAR>  
             \    syntax enable <BAR>
             \ endif<CR>   
nnoremap <C-k> :ALENext<cr>
nnoremap <Leader>l :ALEFix<cr>:w<cr>

autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx

command! -nargs=* -bang -range -complete=filetype NN
              \ :<line1>,<line2> call nrrwrgn#NrrwRgn('',<q-bang>)
              \ | set filetype=<args>

" tnoremap <ESC><ESC>   <C-\><C-n>

let g:ale_linters_explicit = 1
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0
let g:polyglot_disabled = ['vue']
let g:vue_pre_processors='detect_on_enter'

au FileType gitcommit setlocal tw=72
filetype indent plugin on

let g:fzf_layout = { 'down': '40%' }

