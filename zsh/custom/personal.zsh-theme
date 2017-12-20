#!/usr/bin/env zsh
# personal zsh prompt theme

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

local user_host='%{$fg[white]%}%n%{$reset_color%} %{$fg[green]%}@%{$reset_color%} %{$fg[white]%}$(box_name)%{$reset_color%}'
local dir_prefix='%{$fg[green]%}in%{$reset_color%}'
local dir='%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}'
local repository_info='%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─ ${user_host} ${dir_prefix} ${dir}${repository_info}"$'\n'"╰─ $ "

ZSH_PROMPT_BASE_COLOR="%{$fg[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}) "
