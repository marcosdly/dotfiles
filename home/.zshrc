# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install

# Setting prompt
autoload -Uz promptinit && promptinit
autoload -U add-zsh-hook
setopt prompt_subst

# Define the theme
prompt_nothing_setup() {
  NT_PROMPT_SYMBOL="->"

  if [[ "$NT_HIDE_COUNT" == '1' ]]; then
  	command_count=''
  else
  	command_count='%F{gray}%i %f'
  fi

  PROMPT='${command_count}%(?.%F{green}${NT_PROMPT_SYMBOL}%f.%F{red}${NT_PROMPT_SYMBOL}%f) '

  if [[ "$NT_HIDE_EXIT_CODE" == '1' ]]; then
  	RPROMPT=''
  else
  	RPROMPT='%(?..%F{red}%B%S  $?  %s%b%f)'
  fi
}

# Add the theme to promptsys
prompt_themes+=( nothing )

# Load the theme
prompt nothing

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# Aliases
alias ls="ls --color"

# Plugins
source $HOME/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
