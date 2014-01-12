execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

set background=dark
if has('gui_running')
    set background=light
    colorscheme solarized
    set guifont=Ubuntu\ Mono\ 13
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set list
set smartcase

" Change the leader key.
let mapleader=','

" Fix syntax hilighting.
map <F12> :syntax sync fromstart<CR>

" Toggle NERDTree.
map <C-e> :NERDTreeToggle<CR>

" Toggle Tagbar.
map <F8> :TagbarToggle<CR>

" Do not preview documentation when editing python.
autocmd FileType python setlocal completeopt-=preview
