" vim-plug plugins {{{
call plug#begin('~/.local/share/nvim/plugged')

" Appearance plugins.
Plug 'mhartington/oceanic-next'
Plug 'junegunn/seoul256.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi' " Python
Plug 'Rip-Rip/clang_complete' " C/C++
"Plug 'tweekmonster/deoplete-clang2'
Plug 'Shougo/neoinclude.vim' " Completion for C/C++ project headers.
Plug 'Shougo/neco-vim' " Vimscript
Plug 'carlitux/deoplete-ternjs', { 'do': 'sudo npm install -g tern' } " js 
Plug 'artur-shaik/vim-javacomplete2' " Java (TODO: Try this out.)

" Utils
Plug 'scrooloose/nerdtree'
"Plug 'jiangmiao/auto-pairs'
Plug 'derekwyatt/vim-fswitch' " For C/C++ header files.
Plug 'w0rp/ale'

call plug#end()
" }}}

" Allow for project specific configuration.
silent! so .nvimlocal

" Appearance settings {{{
set termguicolors
colo OceanicNext
syntax enable
set nu
hi LineNr ctermfg=gray
" Show tabs as 4 spaces.
set tabstop=4
set shiftwidth=4
set colorcolumn=80 " To prevent long ugly lines.

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
set laststatus=2
" }}}

" Autocompletion {{{
let g:deoplete#enable_at_startup = 1
" clang_complete
if has('unix')
	" Change accordingly (looking at you Theo).
	let g:clang_library_path = '/usr/lib/libclang.so'
endif " TODO: configure with windows.
let g:clang_complete_auto = 0
let g:clang_complete_select = 0
let g:clang_omnicppcomplete_compliance = 0
let g:clang_make_default_keymappings = 0
" }}}

" utils {{{
" FSwitch
nmap , :FSHere<CR>
" }}}
