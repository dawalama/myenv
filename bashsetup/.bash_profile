HISTFILESIZE=400000000
HISTSIZE=1000000
export PROMPT_COMMAND="history -a ; ${PROMPT_COMMAND:+$PROMPT_COMMAND}"
export HISTSIZE PROMPT_COMMAND

shopt -s histappend

alias ll="ls -la"

# Run twolfson/sexy-bash-prompt
source ~/.bash-git-prompt/gitprompt.sh
GIT_PROMPT_ONLY_IN_REPO=1


if which pyenv > /dev/null; then 
    eval "$(pyenv init -)"; 
    pyenv virtualenvwrapper_lazy
    alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
fi

#export PYTHONWARNINGS="default"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/rocketrip/rocketrip-dev
#source /usr/local/opt/autoenv/activate.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/sbin:$PATH"
