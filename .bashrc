# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\] \$ '

# Alias
alias yta="youtube-dl -x --audio-format mp3 --embed-thumbnail --no-mtime --metadata-from-title '%(artist)s - %(title)s' --add-metadata "
alias ytv="youtube-dl -f bestvideo+bestaudio --add-metadata "
alias ls='ls --color=always --group-directories-first'
alias la='ls -a --color=always --group-directories-first'
alias ll='ls -l --color=always --group-directories-first'

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias df='df -h'
alias free='free -m'
