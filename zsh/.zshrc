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

#if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  #PROMPT_PREFIX='ssh'
#else
  #PROMPT_PREFIX='ssh'
#fi

if [[ $(whoami) == 'root' ]]; then
  PROMPT="%{$grey_bg%}%{$orange_fg%}$(print '\uE0B0')%{$light_fg%} %(4~|%-1~/../%2~|%3~) %{$reset_color%}%{$grey_fg%}$(print '\uE0B0')%{$reset_color%} "
else
  PROMPT="%{$grey_bg%}%{$cyan_fg%}$(print '\uE0B0')%{$light_fg%} %(4~|%-1~/../%2~|%3~) %{$reset_color%}%{$grey_fg%}$(print '\uE0B0')%{$reset_color%} "
fi

PATH="/usr/local/bin:$PATH"

alias l='ls -lh -G'
alias ls='ls -G'
alias gs='git status'
alias grep='grep --color'
alias watch='watch --color'

