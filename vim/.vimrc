set nocompatible
filetype off
set rtp+=$HOME/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'itchyny/lightline.vim'

call vundle#end()
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'

call plug#end()

"during insert, kj escapes, `^ is so that the cursor doesn't move
inoremap kj <Esc>`^
"during insert, lkj escapes and saves
inoremap lkj <Esc>`^:w<CR>

" C++ Programming
noremap <C-i>       :! clang-format -i % <CR> <CR>
noremap <C-o>       :! clear && g++ % && ./a.out <CR>

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

set number relativenumber
set nu rnu
set laststatus=2
set noshowmode
set hlsearch
set incsearch
hi search cterm=NONE ctermfg=white ctermbg=black
hi MatchParen cterm=NONE ctermfg=white ctermbg=black
hi Visual cterm=NONE ctermfg=white ctermbg=black
" for misspelled words
highlight SpellBad ctermfg=15 ctermbg=0
" references to those misspelled words
highlight YcmWarningSection ctermfg=15 ctermbg=0
" entire line for that reference on left that appears with warnings/errors
highlight YcmWarningLine ctermbg=0

let g:lightline = {
												\'colorscheme': 'PaperColor'
												\}
