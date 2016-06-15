#!/bin/bash

echo "Installing dotfiles..."
for name in files/; do
    # ensure we don't copy items that aren't .files
    case "$name" in
        "install.sh"|"README")
            continue;;
    esac
    target="$HOME/.$name"
    # backup non-symlinks
    if [ -e "$target" -a ! -L "$target" ]; then
        backup="$target.`stat -c %y $target | cut -c 1-10`"
        echo "Backing up $target --> $backup"
        mv "$target" "$backup"
    fi
    # link to the repository version
    echo "Creating $target"
    ln -snfv "$PWD/$name" "$target"
done
echo


# setup Vundle for vim plugin managment
if [ -x `type -P git` -a ! -d "${HOME}/.vim/bundle/vundle" ]; then
    echo "Cloning Vundle (vim plugin manager)..."
    git clone https://github.com/gmarik/vundle.git "${HOME}/.vim/bundle/vundle"
fi
