ln -sf ~/.vim/dot.vimrc ~/.vimrc
ln -sf ~/.vim/dot.gvimrc ~/.gvimrc

cd ~/.vim
git submodule init
git submodule update
vim +PluginInstall +qall

cd bundle/Command-T
git checkout 5.0.5
cd ruby/command-t/ext/command-t
ruby extconf.rb
make

echo "vim config install complete!!"
