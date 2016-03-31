" KEYMAPPINGS
"DISABLED DEFAULT MAPPING: UNSET SHORTCUTS {{{
" Unmapping help from F1 and Ctrl-F1 for use toggling the reference manual
" the :h topic feature works, and <leader><F1> displays quickref
inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>
"unmap the suspend function
map <C-z> <Nop>
"}}}

" Set mapleader
" "let g:mapleader="\<C-e>"
let g:mapleader=","

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" spacebar create/open/close folding
nmap <silent> <Space> za
vmap <silent> <Space> zf

" enable/disable list
nmap <silent> <C-l> :set nolist!<CR>

" Map escape key to jj or <leader>e
imap jj <ESC>

" Sudo to write
cmap w!! :w !sudo tee % >/dev/null

" Quick alignment of text
nmap <leader>al :left<CR>
nmap <leader>ar :right<CR>
nmap <leader>ac :center<CR>

" Spell commands
nmap ?n ]s
nmap ?p [s
nmap ?+ zg
nmap ?? z=

" Make Y consistent with C and D
nnoremap Y y$

" jump to start/end of line
noremap H ^
noremap L $

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" Map command-[ and command-] to indenting or outdenting while keeping the
" original selection in visual mode
if OSX()
  vmap <D-]> >gv
  vmap <D-[> <gv
  nmap <D-]> >>
  nmap <D-[> <<
  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i
else
  vmap <A-]> >gv
  vmap <A-[> <gv
  nmap <A-]> >>
  nmap <A-[> <<
  imap <A-]> <Esc>>>i
  imap <A-[> <Esc><<i
endif

" Block indent/unindent with Tab/Shift-Tab
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nnoremap <Tab> >>
nnoremap <S-Tab> <<
inoremap <Tab> <Esc>>>i
inoremap <S-Tab> <Esc><<i

" Keep search pattern at the center of the screen
nmap <silent> n nzz
nmap <silent> N Nzz
nmap <silent> * *zz
nmap <silent> # #zz
nmap <silent> g* g*zz
nmap <silent> g# g#zz

" Circular windows navigation
nmap <C-j> <c-w>w
nmap <C-k> <c-w>W

" Circular buffer navigation
map <C-Right> :bn<CR>
map <C-Left> :bp<CR>

" Drag Current Line/s Vertically
" Bubble single lines
if OSX()
  nmap <D-j> :m .+1<CR>==
  nmap <D-k> :m .-2<CR>==
  imap <D-j> <Esc>:m .+1<CR>==gi
  imap <D-k> <Esc>:m .-2<CR>==gi
  vmap <D-j> :m '>+1<CR>gv=gv
  vmap <D-k> :m '<-2<CR>gv=gv
else
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
endif

nnoremap <silent> <C-w>1 :only<CR>
nnoremap <silent> <C-w>2 :only<CR> <C-w>v
nnoremap <silent> <C-w>3 :only<CR> <C-w>v<C-w>s
nnoremap <silent> <C-w>4 :only<CR> <C-w>v<C-w>s<C-w>h<C-w>s

" switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" set text wrapping toggles
nmap <silent> tw :set invwrap<cr>:set wrap?<cr>

" Underline the current line with '-'
nmap <silent> <leader>ul :t.<CR>Vr-
