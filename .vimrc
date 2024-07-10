" Set scrolloff
set scrolloff=30
" Do incremental searching.
set incsearch
" Don't use Ex mode, use Q for formatting.
map Q gq
""set NERDTree
set NERDTree
""set ideamarks
set ideamarks
""set alphabet increment
set nrformats-=alpha

" Set <esc> for <Ctrl - j>
nnoremap <C-j> <ESC>
inoremap <C-j> <ESC>
vnoremap <C-j> <ESC>
snoremap <C-j> <ESC>
cnoremap <C-j> <ESC>
onoremap <C-j> <ESC>

set relativenumber
set clipboard+=unnamed
set commentary
set surround

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
" Surround text
Plug 'tpope/vim-surround'