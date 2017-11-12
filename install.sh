ln -sf ~/.vim/dot.vimrc ~/.vimrc
ln -sf ~/.vim/dot.gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall

cd bundle/Command-T
bundle
bundle exec rake make
echo "vim config install complete!!"
