colorscheme desert

let g:CommandTMaxFiles = 50000      " commant-t scan files size
filetype off                        " required by vundle
set nocompatible                    " required by vundle
set autoindent                      " auto indent code
set autoread                        " auto reload file
set colorcolumn=80                  " 80 column line
set cursorline                      " highlight current line
set nofoldenable                    " disable folding by default
set hlsearch                        " highlight all search pattern matches
set incsearch                       " enable incremental search
set laststatus=2                    " always show statusline
set noeb vb t_vb=                   " remove beep
set nolist                          " dont show end of line symbol
set nomousehide                     " dont hide mouse while typing
set noswapfile                      " no create swap file
set nowrap                          " dont wrap line
set number                          " show line number
set shellcmdflag=-ic                " load .bashrc

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'ervandew/supertab'          " autocomplete with tab
Plugin 'wincent/Command-T'          " command-t like mate
Plugin 'scrooloose/nerdtree'        " nerdtree is nerdtree
Plugin 'corntrace/bufexplorer'      " easy way show file's buffer
Plugin 'Lokaltog/vim-powerline'     " show a line with file details
Plugin 'Raimondi/delimitMate'       " automatic closing of quotes, parenthesis, brackets, etc
Plugin 'msanders/snipmate.vim'      " snippets like textmate behavior
Plugin 'tpope/vim-endwise'          " plugin that end certain structures automatically
Plugin 'tpope/vim-repeat'           " repeat last command with '.'
Plugin 'tpope/vim-rails'            " work with rails easy
Plugin 'rodjek/vim-puppet'          " syntax highligh puppet scripts
Plugin 'godlygeek/tabular'          " plugin that align text
Plugin 'vim-scripts/DirDiff.vim'    " performs a recursive diff on two directories
Plugin 'mileszs/ack.vim'            " search a pattern recursively in directory
Plugin 'airblade/vim-gitgutter'     " show git diff in editor
Plugin 'scrooloose/syntastic'       " show syntax errors after save
Plugin 'pangloss/vim-javascript'    " improve javascript syntax highligtht
Plugin 'maxmellon/vim-jsx-pretty'   " support to react code

call vundle#end()

" setting shorcuts
map ,c :Rcontroller<CR>
map ,m :Rmodel<CR>
map ,v :Rview<CR>
map <C-b> :BufExplorer<CR>
map <C-l> :set list!<CR><BAR>:echo<CR>
map <C-n> :DirDiffNext<CR>
map <D-t> :CommandT<CR>
map <F2> :NERDTreeToggle<CR>
map <silent> <Space> :nohlsearch<BAR>:echo<CR>
nnoremap \a :Ack <cword><CR>
nnoremap do do<CR> ]c<CR>
nnoremap dp dp<CR> ]c<CR>
noremap <F5> :CommandTFlush<CR>

" delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()
