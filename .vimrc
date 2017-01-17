set shell=/bin/bash\ -i
call pathogen#infect()
call pathogen#helptags()

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
call vundle#end()   
filetype plugin indent on 

nmap gi <Plug>IndentGuidesToggle
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>
map ,cd :cd %:p:h<CR>
nmap <silent> <leader>s :set nolist!<CR>

nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w!<CR>
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
nnoremap <C-CR> :SplitjoinSplit<CR>
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
nnoremap gp `[v`]
nnoremap <C-a> ggVG

inoremap <expr> j pumvisible() ? '<C-n>' : 'j'
inoremap <expr> k pumvisible() ? '<C-p>' : 'k'

" map a motion and its reverse motion:
noremap <expr> h repmo#Key('h', 'l')|sunmap h
noremap <expr> l repmo#Key('l', 'h')|sunmap l

" if you like `:noremap j gj', you can keep that:
noremap <expr> j repmo#Key('gj', 'gk')|sunmap j
noremap <expr> k repmo#Key('gk', 'gj')|sunmap k

" repeat the last [count]motion or the last zap-key:
noremap <expr> ; repmo#LastKey(';')|sunmap ;
noremap <expr> , repmo#LastRevKey(',')|sunmap ,

" add these mappings when repeating with `;' or `,':
noremap <expr> f repmo#ZapKey('f')|sunmap f
noremap <expr> F repmo#ZapKey('F')|sunmap F
noremap <expr> t repmo#ZapKey('t')|sunmap t
noremap <expr> T repmo#ZapKey('T')|sunmap T

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
syntax sync fromstart

" FILETYPES
au BufNewFile,BufRead *.ru set filetype=ruby
au BufNewFile,BufRead *.json set filetype=php
au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.vue set filetype=vue
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
set guifont=DejaVu\ Sans\ Mono\ 12
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

" GENERAL AUTOCOMPLETION

" set omnifunc=xmlcomplete#CompleteTags
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <C-p> pumvisible() ? '<C-p>' : '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

" ULTISNIP

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" OMNISHARP

let g:OmniSharp_server_type = 'v1'
"
"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"Super tab settings - uncomment the next 4 lines
"let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
"let g:SuperTabClosePreviewOnPopupClose = 1

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview
" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

" Get Code Issues and syntax errors
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
" If you are using the omnisharp-roslyn backend, use the following
" let g:syntastic_cs_checkers = ['code_checker']
augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END


" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Contextual code actions (requires CtrlP or unite.vim)
nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>
"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

" Enable snippet completion, requires completeopt-=preview
let g:OmniSharp_want_snippet=1

" RAGTAG

let g:ragtag_global_maps = 1

" NERDTREE

let g:NERDTreeChDirMode=2

" SESSION MANAGER

let g:session_autoload=1
let g:session_autosave=1

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

function! QFDo(bang, command) 
  let qflist={} 
  if a:bang 
     let tlist=map(getloclist(0), 'get(v:val, ''bufnr'')') 
  else 
     let tlist=map(getqflist(), 'get(v:val, ''bufnr'')') 
  endif 
  if empty(tlist) 
    echomsg "Empty Quickfixlist. Aborting" 
    return 
  endif 
  for nr in tlist 
  let item=fnameescape(bufname(nr)) 
  if !get(qflist, item,0) 
     let qflist[item]=1 
  endif 
  endfor 
  :exe 'argl ' .join(keys(qflist)) 
  :exe 'argdo ' . a:command 
endfunc 

command! -nargs=1 -bang Qfdo :call QFDo(<bang>0,<q-args>) 


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
runtime macros/matchit.vim
packadd! matchit

" Use ag the silver searcher if available instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
