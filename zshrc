
# start init profiling
PROFILE_STARTUP=false
if [[ "$PROFILE_STARTUP" == true ]]; then
    # http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
    PS4=$'%D{%M%S%.} %N:%i> '
    exec 3>&2 2>$HOME/tmp/startlog.$$
    setopt xtrace prompt_subst
fi
# end init profiling

source ~/.zsh/functions.zsh

source-easy ~/.zsh/colors.zsh
source-easy ~/.zsh/antigen.zsh
source-easy ~/.zsh/history.zsh
source-easy ~/.zsh/aliases.zsh
source-easy ~/.zsh/bindkeys.zsh
source-easy ~/.zsh/exports.zsh
source-easy ~/.zsh/setopt.zsh
source-easy ~/.zsh/zshenv.zsh
source-easy ~/.zsh/local.zsh


# start finish profiling
if [[ "$PROFILE_STARTUP" == true ]]; then
    unsetopt xtrace
    exec 2>&3 3>&-
fi
# end finish profiling
