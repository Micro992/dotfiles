#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL='nvim'
export EDITOR='nvim'
export MANPAGER='nvim +Man!'
source /usr/share/git/completion/git-prompt.sh
parse_git_bg() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    if [[ $(git status -s 2> /dev/null) ]]; then
      echo -e "\033[0;31m"
    else
      echo -e "\033[0;32m"
    fi
  else
    echo -e "\033[0m"
  fi
}

PS1='\[\033[0;32m\]\[\033[0;34m\]\[\033[0;34m\] \w\[$(parse_git_bg)\]$(__git_ps1)\n\[\033[0;35m\]\$ \[\033[0m\]'

# shortcut for commands
alias inv='nvim $(fzf --preview="bat --color=always {}")'
alias invm='nvim $(fzf -m --preview="bat --color=always {}")'
alias ll='eza -la --icons'
alias ls='eza --icons'
alias la='ls -A'
alias grep='grep --color=auto'
alias c='clear'
alias du='du -h --max-depth=1'
alias pyrun='python3'
alias fun='fortune | cowsay -r'
alias notes="cd ~/notes/ && nvim"

# git shortcut
alias gl='git log --graph --pretty=format:"%C(yellow)%h%Creset -%C(red)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gs='git status'
alias gc='git commit -m'
alias gp='git push origin main'

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# Set up Zoxide 
eval "$(zoxide init --cmd cd bash)"

# I hope my girl won't see this ;)
cheat() {
  curl "https://cheat.sh/$1"
}

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
