# User dependent .bashrc file

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# aliases
if [ -f "${HOME}/.bash_aliases" ] ; then
  source "${HOME}/.bash_aliases"
fi

# colors
if [ -f "${HOME}/.bash_colors" ] ; then
  source "${HOME}/.bash_colors"
fi

# prompt
prompt_command() {
  local status="$?"
  local status_color=""
  
  if [ $status != 0 ]; then
    status_color=$TXT_REDBOLD
  else
    status_color=$TXT_GREENBOLD
  fi
  
  export PS1="\n${TXT_CYAN}\h ${TXT_CYANBOLD}\w\n🪓${status_color} ❯${TXT_RESET} "
}

export PROMPT_COMMAND=prompt_command

# export PS1=$DEFAULT_PROMPT
# eval "$(starship init bash)"
# export PS1="\[\e[0;31m\]\h:\[\e[0;32m\]\w \[\e[0;34m\]\u \$ \[\e[0m\]"

# make ls output readable
LS_COLORS="$LS_COLORS:di=${LIGHTBLUEBOLD}"
LS_COLORS="$LS_COLORS:ex=${GREENBOLD}"

# cs15
use -q comp15

# cs40
use -q comp40
