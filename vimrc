source ~/.vim/plugins.vim

" UI
colorscheme solarized
set background=dark
hi Normal ctermbg=NONE
set number

" use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

" directories
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

" Coc
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-prettier' ]
let g:coc_disable_startup_warning = 1

" map
nmap <F1> <nop>
map <F2> orequire 'pry'; binding.pry unless $pstop<ESC>
nnoremap <silent> <F3> :Rgrep<CR>*

" CtrlP
nnoremap scl :CtrlP .<CR>
nnoremap scr :CtrlPMRU<CR>

" Commands
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
