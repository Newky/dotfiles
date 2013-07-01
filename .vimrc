for s:filename in split(globpath("~/dotfiles/vim/", "*.rc"), "\n")
	let command = "source " . s:filename
	execute command
endfor

" Standard vim stuff
set number
set numberwidth=4
set pastetoggle=<F2>
set showcmd
set showtabline=2
set wildmenu
set wildmode=list:longest,full

filetype plugin indent on
syntax on
