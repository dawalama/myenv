HISTFILESIZE=400000000
HISTSIZE=10000
export PROMPT_COMMAND="history -a ; ${PROMPT_COMMAND:+$PROMPT_COMMAND}"
export HISTSIZE PROMPT_COMMAND

shopt -s histappend

alias ll="ls -la"

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/sbin:$PATH"
