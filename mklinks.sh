dir=~/dotfiles
files=".zshrc .vimrc .tmux.conf"

cd $dir

echo '...done'

for file in $files: 
do 
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
