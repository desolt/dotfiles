call plug#begin('~/.vim/plugged')

" Colors
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'derekwyatt/vim-fswitch'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-haml'
Plug 'vim-syntastic/syntastic'

call plug#end()

set encoding=utf-8

" A E S T H E T I C
" My colorscheme
colo seoul256
set background=dark
" Show numbers
set number
" Transparent background
"hi Normal guibg=NONE ctermbg=NONE
" Line colors and transparent bg
"hi LineNr guifg=#00af5f ctermbg=NONE

" Functional stuff
" Tab to spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Plugin configuration
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
set laststatus=2

" fswitch bindings
nmap , :FSHere<CR>

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
