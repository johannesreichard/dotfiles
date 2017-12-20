# using antigen to install plugins, themes etc

source /usr/share/zsh-antigen/antigen.zsh

#tmux

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
command-not-found
colored-man-pages
git
git-extra
github
extract
httpie
debian

rupa/z

zsh-users/zsh-autosuggestions
zsh-users/zsh-completions
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search

EOBUNDLES
#rupa/z

antigen theme $HOME/.zsh/custom personal --no-local-clone

antigen apply

