#!/usr/bin/env bash

alias python='python3'

# +--------+
# | System |
# +--------+

alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias suspend='sudo pm-suspend'

alias bigf= 'find / -xdev -type f -size +500M'  # display "big" files > 500M

# +----+
# | ls |
# +----+

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -lahF'
alias lls='ls -lahFtr'
alias la='ls -A'
alias lc='ls -CF'

# +------+
# | wget |
# +------+
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# +----+
# | cp |
# +----+

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias la='ls -alh'

# +------+
# | grep |
# +------+

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# +------+
# | time |
# +------+

alias time='/usr/bin/time'

# +---------+
# | netstat |
# +---------+

alias port="netstat -tulpn | grep"

# +--------+
# | Neovim |
# +--------+

alias st='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w'
alias vim='nvim'
alias vi='nvim'
alias svim='sudoedit'
alias dvim="vim -u /usr/share/nvim/archlinux.vim" # nvim with default config
alias nvimc='rm -I $VIMCONFIG/swap/*'             # clean nvim swap file
alias nvimcu='rm -I $VIMCONFIG/undo/*'            # clean the vim undo
alias nviml='nvim -w $VIMCONFIG/vimlog "$@"'      # log the keystrokes
alias nvimd='nvim --noplugin -u NONE'             # launch nvim without any plugin or config (nvim debug)
alias nvimfr='nvim +e /tmp/scratchpad.md +"set spelllang=fr"'

# +-----+
# | Git |
# +-----+

alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gp='git push'
alias gpraise='git blame'
alias gpo='git push origin'
alias gpt='git push --tag'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias grb='git branch -r'                                                                           # display remote branch
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log --pretty=oneline'
alias gr='git remote'
alias grs='git remote show'
alias glol='git log --graph --abbrev-commit --oneline --decorate'
alias gclean="git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d" # Delete local branch merged with master
alias gblog="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:red)%(refname:short)%(color:reset) - %(color:yellow)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:blue)%(committerdate:relative)%(color:reset))'"                                                             # git log for each branches
alias gsub="git submodule update --remote"                                                        # pull submodules
alias gj="git-jump"                                                                               # Open in vim quickfix list files of interest (git diff, merged...)

alias dif="git diff --no-index"                                                                   # Diff two files even if not in git repo! Can add -w (don't diff whitespaces)

# +------------+
# | Kubernetes |
# +------------+

alias k='kubectl'
alias kns='kubectl config set-context --current --namespace'
alias kct='kubectl config set-context'
alias kcn='kubectl config view --minify -o jsonpath="{..namespace}"'
