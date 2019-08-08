source ~/.vim/plugins.vim

" UI
set guioptions=i
colorscheme pablo
set background=dark

" use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

" buffer stuff
" set hidden

" enable line numbers
set number
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_quiet_messages = { "file": ['_spec.rb$'] }

" indentation
filetype plugin indent on

" map
let mapleader=","
nmap <F1> <nop>
map <F2> orequire 'pry'; binding.pry unless $pstop<ESC>
nnoremap <silent> <F3> :Rgrep<CR>*
nmap <F1> <nop>

nnoremap <F4> <C-]> 

" CtrlP
nnoremap scp :CtrlP<CR>
nnoremap scl :CtrlP .<CR>
nnoremap scb :CtrlPBuffer<CR>
nnoremap scr :CtrlPMRU<CR>
nnoremap sct :CtrlPTag<CR>

" tsuquyomi
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_single_quote_import = 1
nnoremap td :TsuDefinition<CR>
nnoremap ti :TsuImport<CR>
nnoremap ts :TsuSearch<CR>
nnoremap tr :TsuRenameSymbol<CR>

" ctags
nnoremap <F5> :!~/.vim/bin/ctags.sh<CR>
set tags=./tags;/

cabbrev E Explore

let g:closetag_filenames = "*.html"

" prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue PrettierAsync
