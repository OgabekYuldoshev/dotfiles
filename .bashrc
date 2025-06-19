#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ "$TERM_PROGRAM" == "" ]]; then
  eval "$(starship init bash)"

  alias lsd='eza --icons'
  alias bt='blueman-manager'
  alias pacup='sudo pacman -Rns $(pacman -Qdtq)'
  alias grep='grep --color=auto'
  alias bye='sudo shutdown -h now'
  alias loop='sudo reboot'
  alias n="nvim"

fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
PS1='[\u@\h \W]\$ '

# pnpm
export PNPM_HOME="/home/o27/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
