" ignore files on command-t

let g:CommandTMaxHeight=20
set wildignore+=.git/**,tmp,*.swp,*.log                  " commons
set wildignore+=*.gif,*.png,*.jpg                        " image
set wildignore+=*.class,*.jar                            " java
set wildignore+=**/vendor/assets/*,**/vendor/bundle/*    " ruby
set wildignore+=node_modules/**                          " node
set wildignore+=**/bower_components/*                    " js
