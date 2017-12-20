# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1

# Enable color in grep
export GREP_COLOR='3;33'

export EDITOR=vim

ipath $HOME/dotfiles/bin

#eval "$(ntfy shell-integration)"
export AUTO_NTFY_DONE_LONGER_THAN=-L90
export AUTO_NTFY_DONE_IGNORE="vim screen meld firefox chromium-browser charm moc mocp git hub as ad ar app acs ac watch htop ga"


# aws cli completion
if [ -f $HOME/.local/bin/aws_zsh_completer.sh ]; then
    source $HOME/.local/bin/aws_zsh_completer.sh
fi

