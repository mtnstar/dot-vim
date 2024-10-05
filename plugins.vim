" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()
" general
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" theme
Plug 'altercation/vim-colors-solarized'

" js/frontend
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

Plug 'neoclide/coc.nvim'

" ruby / rails
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise' " adds end to if, do, def ...
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
Plug 'ngmy/vim-rubocop'

" git
Plug 'tpope/vim-fugitive'
Plug 'github/copilot.vim'

" yaml
Plug 'lmeijvogel/vim-yaml-helper'

" All of your Plugins must be added before the following line
call plug#end()              " required
