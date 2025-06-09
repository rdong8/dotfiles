# Need to set PATH
brew:
    # https://brew.sh/
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # https://docs.brew.sh/Shell-Completion#configuring-completions-in-fish

brew-packages:
    brew install \
        just \
        fish \
        zellij \
        helix \
        bat \
        btop \
        eza \
        fastfetch \
        fd \
        fzf \
        rg \
        tree \
        uv

fish:
    # https://github.com/orgs/Homebrew/discussions/4412#discussioncomment-5595773
    echo 'eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.config/fish/config.fish
    # https://fishshell.com/docs/current/#default-shell
    echo $(which fish) | sudo tee -a /etc/shells
    chsh -s $(which fish)

zellij:
    echo "Nothing to do"

helix:
    cp helix/config.toml ~/.config/helix/

just:
    # https://just.systems/man/en/shell-completion-scripts.html
    just --completions fish > ~/.config/fish/completions/just.fish

