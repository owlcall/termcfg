
export PATH=/opt/local/bin:$PATH

#alias l='ls -lAh -G'
#alias ls='ls -A -G'
alias l='ls -lh -G'
alias ls='ls -G'
alias gs='git status'


source ~/.config/powerlevel9k/powerlevel9k.zsh-theme

# Theme
POWERLEVEL9K_MODE='compatible'

# Advanced `vi_mode` color customization
POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='teal'
POWERLEVEL9K_DIR_FOREGROUND='248'
POWERLEVEL9K_DIR_BACKGROUND='236'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{253} $(print $'\uE0B1') %F{248}"
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_SSH_ICON_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_BACKGROUND="236"
POWERLEVEL9K_DIR_HOME_FOREGROUND="248"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="236"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="248"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="236"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="248"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='236'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='39'

POWERLEVEL9K_ROOT_ICON=""
if [[ $(whoami) == 'root' ]]; then
  POWERLEVEL9K_USER_ROOT_BACKGROUND='236'
  POWERLEVEL9K_USER_ROOT_FOREGROUND='202'
  POWERLEVEL9K_USER_DEFAULT_BACKGROUND='236'
  POWERLEVEL9K_USER_DEFAULT_FOREGROUND='202'
  POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{202} $(print $'\uE0B1') %F{248}"
  POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="%F{232}$(print '\uE0B0')"
else
  POWERLEVEL9K_USER_DEFAULT_BACKGROUND='236'
  POWERLEVEL9K_USER_DEFAULT_FOREGROUND='076'
  POWERLEVEL9K_USER_DEFAULT_FOREGROUND='039'
  POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{039} $(print $'\uE0B1') %F{248}"
  POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="%F{232}$(print '\uE0B0')"
fi

POWERLEVEL9K_HOST_REMOTE_BACKGROUND='236'
POWERLEVEL9K_HOST_REMOTE_FOREGROUND='142'
POWERLEVEL9K_HOST_LOCAL_BACKGROUND='236'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND='76'

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host dir)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
fi

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_DISABLE_RPROMPT=true

alias grep="grep --color"
alias fs="du -sh"
#set -o vi

function 256colors() {
  for i in {0..255} ; do
      printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
      if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
          printf "\n";
      fi
  done
}

function fixssh() {
  eval $(tmux show-env -s |grep '^SSH_')
}

#if [[ -x $(command -v git) ]]; then
  #git config merge.tool vimdiff
  #git config merge.conflictstyle diff3
  ##git config mergetool.prompt false
#fi

setopt auto_cd

function plisten {
  echo `lsof -n -i4TCP:$1 | grep LISTEN`
}

function pproc {
  numre='^[0-9]+$'
  numlines=1
  if [[ $2 =~ $numre ]]; then
    numlines=$2
  fi
  lsof -p $1 | head -n $(expr $numlines + 1) | tail -n $numlines | awk '{print $9}'
}


