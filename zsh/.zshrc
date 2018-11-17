autoload colors; colors;
typeset -Ag FX FG BG

FX=(
  reset     "%{[00m%}"
  bold      "%{[01m%}" no-bold      "%{[22m%}"
  italic    "%{[03m%}" no-italic    "%{[23m%}"
  underline "%{[04m%}" no-underline "%{[24m%}"
  blink     "%{[05m%}" no-blink     "%{[25m%}"
  reverse   "%{[07m%}" no-reverse   "%{[27m%}"
)

for color in {000..255}; do
	FG[$color]="\x1b[38;5;${color}m"
	BG[$color]="\x1b[48;5;${color}m"
done

eval cyan_fg='$(echo $FG[032])'
eval cyan_bg='$(echo $BG[032])'
eval orange_fg='$(echo $FG[202])'
eval black_fg='$(echo $FG[000])'
eval grey_bg='$(echo $BG[236])'
eval grey_fg='$(echo $FG[236])'
eval light_bg='$(echo $BG[249])'
eval light_fg='$(echo $FG[249])'
eval white_bg='$(echo $BG[252])'
eval white_fg='$(echo $FG[252])'

if [[ $(whoami) == 'root' ]]; then
  PROMPT_COLOR="%{$orange_fg%}"
else
  PROMPT_COLOR="%{$cyan_fg%}"
fi

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  PROMPT_PREFIX="%{$grey_bg%}$PROMPT_COLOR$(print '\u258F')%{$light_fg%}$(hostname)"
else
  PROMPT_PREFIX="" #"%{$grey_bg%}$PROMPT_COLOR$(print '\u258F')%{$light_fg%}$(hostname)"
fi

PROMPT="$PROMPT_PREFIX$PROMPT_COLOR$(print '\u2523\uE0B0')%{$light_fg%} %(4~|%-1~/../%2~|%3~) %{$reset_color%}%{$grey_fg%}$(print '\uE0B0')%{$reset_color%} "

PATH="/usr/local/bin:$PATH"

alias l='ls -lh -G'
alias ls='ls -G'
alias gs='git status'
alias grep='grep --color'
alias watch='watch --color'

HISTSIZE=1024            #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=1048576            #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed


