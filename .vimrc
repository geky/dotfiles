filetype plugin on
syntax on

set showcmd
set noswapfile
set scrolloff=3

set expandtab
set tabstop=4
set shiftwidth=4

" make comments _very_ visible
hi Comment ctermfg=white
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" highlight col 81
hi OverLength ctermbg=darkblue
match OverLength /\%81v./

noremap <t_k1> <Nop>
noremap! <t_k1> <Nop>

" make moving the screen around a bit easier
noremap z<Up> <C-y>
noremap zk <C-y>
noremap z<Down> <C-e>
noremap zj <C-e>

" uh, this gets in the way of moving over folds, so move those around
noremap z[ zk
noremap z] zj

" avoid accidentally quitting
nnoremap Z <Nop>
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>

command -nargs=* R r <args>

set tags=tags;
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

" why do I constantly have to undo these...
autocmd FileType rust setlocal nosmartindent
let g:zig_fmt_autosave = 0
let g:c_no_curly_error = 1
let g:yaml_recommended_style = 0
