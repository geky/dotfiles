filetype plugin on
syntax on

set showcmd
set noswapfile

set expandtab
set tabstop=4
set shiftwidth=4

hi Comment ctermfg=white
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

noremap <t_k1> <Nop>
noremap! <t_k1> <Nop>

set tags=tags;
