brew:
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

fish:
    sudo dnf install fish
    which fish | sudo lchsh $USER
    
