#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL='nvim'
export EDITOR='nvim'

source /usr/share/git/completion/git-prompt.sh
parse_git_bg() {
  if [[ $(git status -s 2> /dev/null) ]]; then
    echo -e "\033[0;31m"
  else
    echo -e "\033[0;32m"
  fi
}
PS1='\[\033[0;32m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h \w\[$(parse_git_bg)\]$(__git_ps1)\n\[\033[0;32m\]\$ \[\033[0m\]'

neofetch

# shortcut for commands

alias inv='nvim $(fzf --preview="bat --color=always {}")'
alias invm='nvim $(fzf -m --preview="bat --color=always {}")'
alias ll='eza -la --icons'
alias ls='eza --icons'
alias grep='grep --color=auto'
alias c='clear'
alias du='du -h --max-depth=1'
alias pyrun='python3'
alias fun='fortune | cowsay -r'
# git shortcut
alias gl='git log --oneline --graph --all'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push origin main'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# Set up Zoxide 
eval "$(zoxide init --cmd cd bash)"

. "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
