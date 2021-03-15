filetype plugin on
syntax on

set showcmd
set noswapfile

set expandtab
set tabstop=4
set shiftwidth=4

hi Comment ctermfg=white
let g:c_no_curly_error=1
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

noremap <t_k1> <Nop>
noremap! <t_k1> <Nop>

set tags=tags;

hi OverLength ctermbg=darkblue
match OverLength /\%81v./

autocmd FileType rust setlocal nosmartindent
let g:zig_fmt_autosave = 0
