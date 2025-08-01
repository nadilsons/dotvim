ln -sf ~/.vim/dot.vimrc ~/.vimrc
ln -sf ~/.vim/dot.gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall

echo "vim config install complete!!"
