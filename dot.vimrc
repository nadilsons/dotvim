"colorscheme slate
colorscheme desert
" settings for terminal version of vim
highlight Search ctermbg=yellow ctermfg=black
" settings for gvim (linux) / macvim
highlight Search guibg=yellow guifg=black

set autoindent       " auto indent code
set autoread         " auto reload file
set cursorline       " highlight current line
set expandtab        " tab as spaces
set hlsearch         " highlight all search pattern matches
set incsearch        " enable incremental search
set noeb vb t_vb=    " remove beep
set nolist           " dont show end of line symbol
set noswapfile       " no create swap file
set nowrap           " dont wrap line
set number           " show line number
set shellcmdflag=-ic " load .bashrc
set shiftwidth=2     " set indent space length
set tabstop=2        " tab space length

call pathogen#infect()

" auto reload .vimrc or .gvimrc when file is saved
autocmd bufwritepost .gvimrc source $MYVIMRC
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd bufwritepost dot.gvimrc source $MYVIMRC
autocmd bufwritepost dot.vimrc source $MYVIMRC

filetype plugin indent on

" setting shorcuts
map ,c :Rcontroller<CR>
map ,m :Rmodel<CR>
map ,v :Rview<CR>
map <C-b> :BufExplorer<CR>
map <C-n> :DirDiffNext<CR>
map <D-t> :CommandT<CR>
map <F2> :NERDTreeToggle<CR>
map <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap \a :Ack <cword><cr>
nnoremap do do<CR> ]c<CR>
nnoremap dp dp<CR> ]c<CR>
