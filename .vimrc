set backup
" For this to work you need to have created these directories first
set backupdir=~/.vim/backup
set columns=83
set directory=~/.vim/tmp
set incsearch
set nohlsearch
set number
set numberwidth=4
set pastetoggle=<F2>
set showcmd
set showtabline=2
set wildmenu
set wildmode=list:longest,full
vnoremap <C-r> "hy:s/<C-r>h//g<left><left>
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <F3> :tabprevious<CR>
nnoremap <silent> <F4> :tabnext<CR>
nnoremap <silent> <F7> :TlistToggle <CR>
nnoremap <silent> <F8> :NERDTreeToggle <CR>
nnoremap <F9> :set nonumber!<CR>
" New Line back into normal mode
nnoremap zo o<Esc>
inoremap jj <Esc>
nnoremap <space> za
vnoremap <space> zf
filetype plugin indent on
syntax on

" Python specific
let python_highlight_all=1
" highlight suspicious whitespace
highlight BadWhitespace ctermbg=red guibg=red
" with smartindent, comments are not indented correctly.
inoremap # X^H#
"
" "display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" " Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" " Make leading whitespace be flagged as bad.
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /^ \+/
 
