HISTFILESIZE=400000000
HISTSIZE=10000
PROMPT_COMMAND="history -a"
export HISTSIZE PROMPT_COMMAND

shopt -s histappend

alias ll="ls -la"

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
