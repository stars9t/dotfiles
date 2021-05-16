# Created by newuser for 5.8

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "[%b%u%c] "

precmd() {
  vcs_info
}

setopt prompt_subst
PROMPT='%B%F{251}%~%f%b %B%F{96}${vcs_info_msg_0_}%f%b%B%F{138}>%b%f '

alias ls="ls --color=auto"
