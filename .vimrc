set autoindent
set backup
" For this to work you need to have created these directories first
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set incsearch
set nohlsearch
set number
set pastetoggle=<F2>
set showcmd
set showtabline=2
set wildmenu
set wildmode=list:longest,full
vnoremap <C-r> "hy:s/<C-r>h//g<left><left>
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> <F3> :tabprevious<CR>
nnoremap <silent> <F4> :tabnext<CR>
nnoremap <silent> <F5> :s/true/false/gc <CR>
inoremap jj <Esc>
nnoremap <space> za
filetype plugin indent on
syntax on
