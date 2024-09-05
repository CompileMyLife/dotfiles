#!/bin/sh
#
# Setup script to automate the creation of dotfiles and setting up git on a new
# machine
#


cd "$(dirname "$0")"
ABS_PATH=$(pwd)

# ----- setup.sh Usage -----
usage() {
    echo "Usage: $0 [[-h] [-e someone@domain.com]]"
    echo "Setup dotfiles in your home directory and setup ssh key for github"
    echo "Options:"
    echo -e "\t-h\tHelp\n\t-e\tGitHub email address to assign ssh key"
}

# ----- Symlink dotfiles to $HOME -----
create_symlink() {
    files=".vimrc .vim .tmux.conf .bash_profile .bashrc"

    for i in $files; do 
        # Check IF it exists
        if [ -e "$HOME/$i" ]; then
            echo -e "The file $i exists in $HOME.\nPlease double check :)"
        # Check IF vim files
        elif [[ "$i" == ".vimrc" || "$i" == ".vim" ]]; then
            echo -e "The file/dir $i doesn't exist in $HOME.\nCreating symlink to $HOME"
            ln -s $ABS_PATH/vim/$i $HOME # symlink to home
        # Other .files
        else
            echo -e "The file/dir $i doesn't exist in $HOME.\nCreating symlink to $HOME"
            ln -s $ABS_PATH/$i $HOME # symlink to home
        fi
    done
}

# ----- Setting up github key -----
create_ssh_key() {
    ssh-keygen -t ed25519 -C $1 # create ssh-key using ed25519
    eval "$(ssh-agent -s)"      # startup ssh-agent

    # Check IF config file exists
    if [ -e $HOME/.ssh/config]; then
        config_str="  IdentityFile ~/.ssh/id_ed25519"
        printf "$config_str" >> $HOME/.ssh/config
    else
        config_str="Host *\n  AddKeysToAgent yes\n  IdentityFile ~/.ssh/id_ed25519"
        printf "$config_str" > $HOME/.ssh/config
    fi

    ssh-add ~/.ssh/id_ed25519

    echo "SSH Key completed successfully. Now add the below public key on GitHub"
    cat ~/.ssh/id_ed25519.pub
}

# ----- MAINLINE -----

email="" # empty

while getopts ":e:h" arg; do
    case $arg in
        e) email=${OPTARG}
           echo "Email provided: $email"

           # Check IF email variable empty
           if [[ -z "email" ]]; then
               echo "Argument has no value"
               usage
               exit 1
           fi
           ;;

        h) usage
           exit 0
           ;;

        \?) 
           usage
           echo "Invalid option: -${OPTARG}" >&2
           exit 1
           ;;

       :) echo "Option -${OPTARG} requires an argument" >&2
          usage
          exit 1
          ;;
   esac
done

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#create_symlink
#create_ssh_key $email

exit 0
