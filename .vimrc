filetype plugin on
syntax on

set showcmd
set noswapfile

set expandtab
set tabstop=4
set shiftwidth=4

hi Comment ctermfg=white
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

hi OverLength ctermbg=darkblue
match OverLength /\%81v./

noremap <t_k1> <Nop>
noremap! <t_k1> <Nop>

command -nargs=* R r <args>

set tags=tags;
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

" why do I constantly have to undo these...
autocmd FileType rust setlocal nosmartindent
let g:zig_fmt_autosave = 0
let g:c_no_curly_error = 1
let g:yaml_recommended_style = 0
