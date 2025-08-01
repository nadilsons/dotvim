ln -sf ~/.vim/dot.vimrc ~/.vimrc
ln -sf ~/.vim/dot.gvimrc ~/.gvimrc

vim +'PlugInstall --sync' +qall

echo "vim config install complete!!"
