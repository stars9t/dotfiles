#          __                        ________   __
#  _______/  |______ _______  ______/   __   \_/  |_
# /  ___/\   __\__  \\_  __ \/  ___/\____    /\   __\
# \___ \  |  |  / __ \|  | \/\___ \    /    /  |  |
#/____  > |__| (____  /__|  /____  >  /____/   |__|
#     \/            \/           \/
#
#https://github.com/stars9t
#
#
export ZSH="/Users/starset/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# If the terminal supports 256 colors
export TERM='xterm-256color'

# Settings for pywal
# Not working in alacritty
export PATH="${PATH}:${HOME}/.local/bin/"
(cat ~/.cache/wal/sequences &)

#Aliases
alias untar='tar -zxvf'
alias c='clear'
alias gc='git commit'
alias gaa='git add .'
alias df='git diff'
alias cm='git checkout master'
alias del='git branch -D'
alias undo='git reset HEAD~1 --mixed'
alias res='git reset --hard'
alias tn='tmux new-session'
