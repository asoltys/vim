nnoremap <C-q> :bn <bar> bw #<CR>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>
noremap <C-e><C-v> :e ~/.vimrc<CR>
nnoremap <C-l> :so ~/.vimrc<CR>
noremap <C-y> <C-r>
noremap <C-n> :bnext<CR>
noremap <C-p> :bprev<CR>
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
nnoremap <C-CR> i<CR><Esc>
inoremap <C-CR> <CR><CR><Up><Tab>
" nnoremap <C-a> ggvG$
nnoremap <C-e> <C-q>
nnoremap <S-Left> <C-W>h
nnoremap <S-Right> <C-W>l
nnoremap <S-Up> <C-W>k
nnoremap <S-Down> <C-W>j
nnoremap <M-z> :NERDTree %:p:h<CR>
nnoremap K Jx
inoremap jj <Esc>
noremap qp mqGo<Esc>"qp
noremap qd G"qdd`q
nnoremap H <C-W>h
nnoremap L <C-W>l
nnoremap > >>
nnoremap < <<
nnoremap gp `[v`]
