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

call pathogen#infect()

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

" fucntion to automatic tabularize call
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
