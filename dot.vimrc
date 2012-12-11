":colorscheme slate 
:colorscheme desert 
" settings for terminal version of vim
:highlight Search ctermbg=yellow ctermfg=black
" settings for gvim (linux) / macvim
:highlight Search guibg=yellow guifg=black

set noswapfile
set incsearch
set cursorline
set number
set autoindent 
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
"set hlsearch

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" auto reload .vimrc or .gvimrc when file is saved
autocmd bufwritepost dot.vimrc source $MYVIMRC
autocmd bufwritepost dot.gvimrc source $MYVIMRC
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost .gvimrc source $MYVIMRC
filetype plugin indent on

imap <Tab> <C-X><C-F>
map <D-t> :CommandT<CR>
map <F2> :NERDTreeToggle<CR>
map <C-b> :BufExplorer<CR>
" map <silent> <Space> :nohlsearch<Bar>:echo<CR>
