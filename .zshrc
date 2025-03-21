#
# ~/.zshrc
#

#fixes URL's for yt-dlp and other stuff
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

#needed for asdf
. /opt/asdf-vm/asdf.sh

#path updates
path+=('/home/kenny/.cargo/bin')

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias lc='eza'
# alias to reload xresources colors in st
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
alias vim="nvim"
alias signal="signal-desktop --password-store=\"gnome-libsecret\" disown"
alias yt-dlp="/usr/bin/yt-dlp_linux"
#PS1='[\u@\h \W]\$ '
#PROMPT="%n@%m:~$"
#PROMPT='[\u@\h \W]\$ '
export PS1="%{$(tput setaf 33)%}%n%{$(tput setaf 220)%}@%{$(tput setaf 10)%}%m %{$(tput setaf 13)%}%1~ %{$(tput sgr0)%}$ "
export ANTHROPIC_API_KEY='API-KEY'
export OPENAI_API_KEY='API-KEY'
export GEMINI_API_KEY='API-KEY'

#history file for zsh
HISTFILE=~/.zsh_history

#how many commands can be saved to history
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILESIZE=

# Share history in every terminal session
setopt SHARE_HISTORY

set -o vi

export PATH

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
