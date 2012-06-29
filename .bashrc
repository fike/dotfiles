export TTY=`tty | sed s/[\\/dev]//g`

# define o prompt
#export PS1='[ ${TTY} @ \h | \w ] \$ '
export PS2='{ ${TTY} } > '

# Cria multiplos arquivos de history
export HISTFILE="$HOME/.bash_history.${TTY}"

# controla o arquivo de history
shopt -s histappend
export HISTCONTROL=ignoreboth
export HISTFILESIZE=5000
export HISTSIZE=5000
export command_oriented_history=1
export HISTTIMEFORMAT='%d-%m-%y %H:%M:%S '
export PROMPT_COMMAND="history -a; history -n"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export pgvm_home=$HOME/.pgvm
export PATH=$pgvm_home/bin:$PATH
export PATH=$pgvm_home/environments/current/bin:$PATH
