# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
# .zshrc config by marcosdly.
# Check marcosdly/dotfiles on GitHub.

# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=10000
# bindkey -v
# End of lines configured by zsh-newuser-install

# |=====================|
#     Setting prompt
# |=====================|

autoload -Uz promptinit && promptinit
autoload -U add-zsh-hook
setopt prompt_subst

# Define the theme
prompt_nothing_setup() {
  NT_PROMPT_SYMBOL="->"
  NT_PROMPT_VI_MODE=$1
  COMMAND_COUNT=$2

  PROMPT='${COMMAND_COUNT} %(?.%F{yellow}${NT_PROMPT_VI_MODE}%f %F{green}${NT_PROMPT_SYMBOL}%f.%F{yellow}${NT_PROMPT_VI_MODE}%f %F{red}${NT_PROMPT_SYMBOL}%f) '

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

# |=====================|
#       Completion
# |=====================|

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# |=====================|
#         Aliases
# |=====================|

alias ls="ls --color"
alias v="vim"

# xbps
alias xq="xbps-query"
alias xi="xbps-install"
alias xr="xbps-remove"
alias xre="xbps-reconfigure"

# |=====================|
#      Key bindings
# |=====================|

bindkey  "^[[H"   beginning-of-line  # Fix Home key
bindkey  "^[[F"   end-of-line        # Fix End key
bindkey  "^[[3~"  delete-char        # Fix Delete key

# |=====================|
#          Hooks
# |=====================|

command_count=0

# Executed before each prompt
precmd() {
  command_count=$(( command_count+1 ))
}

# |=====================|
#         Plugins
# |=====================|

source $HOME/.zplugins/zsh-vi-mode/zsh-vi-mode.zsh
source $HOME/.zplugins/zsh-nvm/zsh-nvm.plugin.zsh
source $HOME/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zplugins/zcolors/zcolors.plugin.zsh
source $HOME/.zplugins/zshrc/zshrc.plugin.zsh
source $HOME/.zplugins/zsh-not-vim/zsh-not-vim.plugin.zsh
source $HOME/.zplugins/setenv/setenv.plugin.zsh
source $HOME/.zplugins/doas-zsh-plugin/doas.plugin.zsh
source $HOME/.zplugins/zsh-auto-notify/auto-notify.plugin.zsh


# |=====================|
#    Plugins' configs
# |=====================|

# zsh-auto-notify configuration
export AUTO_NOTIFY_THRESHOLD=10
export AUTO_NOTIFY_TITLE="\"%command\" has just finished running."
export AUTO_NOTIFY_BODY="(Total time: %elapsed) (Exit code: %exit_code)"

# zsh-vi-mode
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      prompt_nothing_setup "N" "$command_count"
    ;;
    $ZVM_MODE_INSERT)
      prompt_nothing_setup "I" "$command_count"
    ;;
    $ZVM_MODE_VISUAL)
      prompt_nothing_setup "V" "$command_count"
    ;;
    $ZVM_MODE_VISUAL_LINE)
      prompt_nothing_setup "VL" "$command_count"
    ;;
    $ZVM_MODE_REPLACE)
      prompt_nothing_setup "R" "$command_count"
    ;;
  esac
}

# |=====================|
#         Others
# |=====================|

echo && pfetch
