syntax on 
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set ruler
set nocompatible

inoremap jk <ESC>

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

"  Plug 'sheerun/vim-polyglot'
  Plug 'vim-airline/vim-airline'

  Plug 'preservim/nerdtree'

  Plug 'lervag/vimtex'
  
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#auto_complete_delay = 100

  Plug 'tpope/vim-commentary'
  autocmd FileType python setlocal commentstring=#\ %s

  Plug 'joshdick/onedark.vim'

call plug#end()

colorscheme onedark

call deoplete#custom#var('omni', 'input_patterns', {
        \ 'tex': g:vimtex#re#deoplete
        \})


