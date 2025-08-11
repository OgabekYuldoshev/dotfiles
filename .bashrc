#
# ~/.bashrc
#

[[ $- != *i* ]] && return


alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias update='sudo pacman -Syu'
alias pacup='sudo pacman -Rns $(pacman -Qdtq)'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# IP
alias myip="curl ifconfig.me"
alias ports="sudo lsof -i -P -n | grep LISTEN"
# Yay
alias y='yay'
alias yupdate='yay -Syu'
alias yclean='yay -Yc'
# Hyprland
alias config='lf ~/.config/hypr'
alias reload='hyprctl reload'

alias ls='eza --icons'
alias bt='blueman-manager'
alias grep='grep --color=auto'

alias bye='sudo shutdown -h now'
alias loop='sudo reboot'

alias n="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
PS1='[\u@\h \W]\$ '

# pnpm
export PNPM_HOME="~/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
