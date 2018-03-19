nmap gi <Plug>IndentGuidesToggle
map <Leader>rt :!git ctags<CR>
map <Leader>cd :cd %:p:h<CR>
map <Leader>date :echo system('date')<CR>
nmap <silent> <leader>s :set nolist!<CR>
nnoremap <silent> <Leader>n :set number!<CR>
nnoremap <Leader>p :set paste!<CR>
noremap <Leader>v v^o$h
nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w! <bar> syntax sync fromstart<CR>
inoremap <C-s> <Esc>:w!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
noremap <C-g> :Ack<space>
noremap <C-f> :Files<CR>
noremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
nnoremap <C-j> :History:<CR>
nnoremap Q :CtrlPMRU<CR>
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
nnoremap <C-a> ggvG$
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
nnoremap <C-a> ggVG
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
inoremap ZZ <Esc>ZZ
nnoremap <silent> gl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>
nnoremap <silent> gh "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>
nmap <F8> :TagbarToggle<CR>
inoremap <expr> <CR> pumvisible() ? "<Esc>a" : "<CR>"
nnoremap <silent> <Leader>ts
             \ : if exists("syntax_on") <BAR>
             \    syntax off <BAR>
             \ else <BAR>  
             \    syntax enable <BAR>
             \ endif<CR>   

