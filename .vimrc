set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-repeat'
Plugin 'groenewege/vim-less'
Plugin 'chriskempson/base16-vim.git'
Plugin 'OrangeT/vim-csharp.git'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'asoltys/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim.git'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'Shougo/vimproc.vim.git'
Plugin 'tmhedberg/matchit'
Plugin 'schickling/vim-bufonly'
Plugin 'tpope/vim-surround'
Plugin 'elzr/vim-json'
Plugin 'wincent/ferret'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-rooter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'isRuslan/vim-es6'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-fold'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
call vundle#end()   
filetype plugin indent on 

" GENERAL SETTINGS

set encoding=utf8
set nocp
set ruler
set listchars=tab:>-,trail:�,eol:$
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
au FileType cf set omnifunc=htmlcomplete#CompleteTags
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType ruby set omnifunc=rubycomplete#CompleteTags
" let g:html_indent_inctags="html,head,body,p,header,footer,a,span,nav"

" THEME
"
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set t_Co=256
set guifont=Hack
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
  silent s/�/\&Agrave;/eg
  silent s/�/\&Aacute;/eg
  silent s/�/\&Acirc;/eg
  silent s/�/\&Atilde;/eg
  silent s/�/\&Auml;/eg
  silent s/�/\&Aring;/eg
  silent s/�/\&AElig;/eg
  silent s/�/\&Ccedil;/eg
  silent s/�/\&Egrave;/eg
  silent s/�/\&Eacute;/eg
  silent s/�/\&Ecirc;/eg
  silent s/�/\&Euml;/eg
  silent s/�/\&Igrave;/eg
  silent s/�/\&Iacute;/eg
  silent s/�/\&Icirc;/eg
  silent s/�/\&Iuml;/eg
  silent s/�/\&ETH;/eg
  silent s/�/\&Ntilde;/eg
  silent s/�/\&Ograve;/eg
  silent s/�/\&Oacute;/eg
  silent s/�/\&Ocirc;/eg
  silent s/�/\&Otilde;/eg
  silent s/�/\&Ouml;/eg
  silent s/�/\&Oslash;/eg
  silent s/�/\&Ugrave;/eg
  silent s/�/\&Uacute;/eg
  silent s/�/\&Ucirc;/eg
  silent s/�/\&Uuml;/eg
  silent s/�/\&Yacute;/eg
  silent s/�/\&THORN;/eg
  silent s/�/\&szlig;/eg
  silent s/�/\&agrave;/eg
  silent s/�/\&aacute;/eg
  silent s/�/\&acirc;/eg
  silent s/�/\&atilde;/eg
  silent s/�/\&auml;/eg
  silent s/�/\&aring;/eg
  silent s/�/\&aelig;/eg
  silent s/�/\&ccedil;/eg
  silent s/�/\&egrave;/eg
  silent s/�/\&eacute;/eg
  silent s/�/\&ecirc;/eg
  silent s/�/\&euml;/eg
  silent s/�/\&igrave;/eg
  silent s/�/\&iacute;/eg
  silent s/�/\&icirc;/eg
  silent s/�/\&iuml;/eg
  silent s/�/\&eth;/eg
  silent s/�/\&ntilde;/eg
  silent s/�/\&ograve;/eg
  silent s/�/\&oacute;/eg
  silent s/�/\&ocirc;/eg
  silent s/�/\&otilde;/eg
  silent s/�/\&ouml;/eg
  silent s/�/\&oslash;/eg
  silent s/�/\&ugrave;/eg
  silent s/�/\&uacute;/eg
  silent s/�/\&ucirc;/eg
  silent s/�/\&uuml;/eg
  silent s/�/\&yacute;/eg
  silent s/�/\&thorn;/eg
  silent s/�/\&yuml;/eg
endfunction

function! HtmlEscapeNum()
  silent s/?/\&#160;/eg
  silent s/�/\&#161;/eg
  silent s/�/\&#162;/eg
  silent s/�/\&#163;/eg
  silent s/�/\&#164;/eg
  silent s/�/\&#165;/eg
  silent s/�/\&#166;/eg
  silent s/�/\&#167;/eg
  silent s/�/\&#168;/eg
  silent s/�/\&#169;/eg
  silent s/�/\&#170;/eg
  silent s/�/\&#171;/eg
  silent s/�/\&#172;/eg
  silent s/?/\&#173;/eg
  silent s/�/\&#174;/eg
  silent s/�/\&#175;/eg
  silent s/�/\&#176;/eg
  silent s/�/\&#177;/eg
  silent s/�/\&#178;/eg
  silent s/�/\&#179;/eg
  silent s/�/\&#180;/eg
  silent s/�/\&#181;/eg
  silent s/�/\&#182;/eg
  silent s/�/\&#183;/eg
  silent s/�/\&#184;/eg
  silent s/�/\&#185;/eg
  silent s/�/\&#186;/eg
  silent s/�/\&#187;/eg
  silent s/�/\&#188;/eg
  silent s/�/\&#189;/eg
  silent s/�/\&#190;/eg
  silent s/�/\&#191;/eg
  silent s/�/\&#192;/eg
  silent s/�/\&#193;/eg
  silent s/�/\&#194;/eg
  silent s/�/\&#195;/eg
  silent s/�/\&#196;/eg
  silent s/�/\&#197;/eg
  silent s/�/\&#198;/eg
  silent s/�/\&#199;/eg
  silent s/�/\&#200;/eg
  silent s/�/\&#201;/eg
  silent s/�/\&#202;/eg
  silent s/�/\&#203;/eg
  silent s/�/\&#204;/eg
  silent s/�/\&#205;/eg
  silent s/�/\&#206;/eg
  silent s/�/\&#207;/eg
  silent s/�/\&#208;/eg
  silent s/�/\&#209;/eg
  silent s/�/\&#210;/eg
  silent s/�/\&#211;/eg
  silent s/�/\&#212;/eg
  silent s/�/\&#213;/eg
  silent s/�/\&#214;/eg
  silent s/�/\&#215;/eg
  silent s/�/\&#216;/eg
  silent s/�/\&#217;/eg
  silent s/�/\&#218;/eg
  silent s/�/\&#219;/eg
  silent s/�/\&#220;/eg
  silent s/�/\&#221;/eg
  silent s/�/\&#222;/eg
  silent s/�/\&#223;/eg
  silent s/�/\&#224;/eg
  silent s/�/\&#225;/eg
  silent s/�/\&#226;/eg
  silent s/�/\&#227;/eg
  silent s/�/\&#228;/eg
  silent s/�/\&#229;/eg
  silent s/�/\&#230;/eg
  silent s/�/\&#231;/eg
  silent s/�/\&#232;/eg
  silent s/�/\&#233;/eg
  silent s/�/\&#234;/eg
  silent s/�/\&#235;/eg
  silent s/�/\&#236;/eg
  silent s/�/\&#237;/eg
  silent s/�/\&#238;/eg
  silent s/�/\&#239;/eg
  silent s/�/\&#240;/eg
  silent s/�/\&#241;/eg
  silent s/�/\&#242;/eg
  silent s/�/\&#243;/eg
  silent s/�/\&#244;/eg
  silent s/�/\&#245;/eg
  silent s/�/\&#246;/eg
  silent s/�/\&#247;/eg
  silent s/�/\&#248;/eg
  silent s/�/\&#249;/eg
  silent s/�/\&#250;/eg
  silent s/�/\&#251;/eg
  silent s/�/\&#252;/eg
  silent s/�/\&#253;/eg
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
let g:airline_theme='base16'

autocmd Syntax js setlocal foldmethod=syntax
autocmd Syntax json setlocal foldmethod=syntax
autocmd FileType javascript setlocal commentstring=#\ %s
autocmd FileType pug setlocal commentstring=#\ %s

let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:rooter_patterns = ['package.json', '.git/']

if has("folding")
  set foldenable        " enable folding
  set foldmethod=syntax " fold based on syntax highlighting
  set foldlevelstart=99 " start editing with all folds open

  " toggle folds
  nnoremap <Space> za
  vnoremap <Space> za

  hi Folded ctermfg=3 ctermbg=18

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
let g:delimitMate_autoclose = 1
let g:delimitMate_matchpairs = "(:),[:],{:},<:>"
let g:delimitMate_jump_expansion = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_inside_quotes = 1

inoremap {<CR> {<CR>} <C-o>O
