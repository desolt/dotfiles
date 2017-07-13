call plug#begin('~/.vim/plugged')

" Colors
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-fugitive'
Plug 'Shougo/neocomplete.vim'
Plug 'davidhalter/jedi-vim' " python
Plug 'justmao945/vim-clang' " c/c++

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'derekwyatt/vim-fswitch'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-haml'
Plug 'vim-syntastic/syntastic'

Plug 'jiangmiao/auto-pairs'

call plug#end()

set encoding=utf-8

" A E S T H E T I C
" My colorscheme
colo seoul256
set background=dark
set number " Show numbers
hi LineNr ctermfg=gray

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

" Try to make lines no longer than 100 characters.
set colorcolumn=100

" Allow for project specific configuration.
silent! so .vimlocal

" Neocomplete configuration.
let g:acp_enableAtStartup = 1 " Autcomplete pops up
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

if !exists('g:neocomplete#omni#input_patterns')
    let g:neocomplete#omni#input_patterns = {}
endif

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Jedi Configuration
" I owe this to the Japanese (thank you float1251, wherever you are)
let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

" vim-clang
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++ -I/usr/include/c++/7.1.1 -I/usr/include/c++/7.1.1/x86_64-pc-linux-gnu'
let g:clang_auto = 0
let g:clang_c_completeopt = 'menuone'
let g:clang_cpp_completeopt = 'menuone'
let g:clang_dotfile = '.clang'
let g:clang_dotfile_overwrite = '.clang.ow'
let g:clang_diagsopt = ''

if has('unix')
    let g:clang_exec = '/usr/bin/clang'
    let g:clang_format_exec = 'clang-format'
endif

let g:neocomplete#force_omni_input_patterns.c = '\h\w*\|[^. \t]\.\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '\h\w*\|[^. \t]\.\w*'
"let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
"let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:clang_complete_macros = 1

" Airline
let g:airline_powerline_fonts  =1
let g:airline_theme = 'wombat'
set laststatus=2

" fswitch bindings
nmap , :FSHere<CR>

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
