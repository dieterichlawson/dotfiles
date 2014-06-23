if which rbenv > /dev/null; then eval "$(rbenv init -)" ; fi

if [ -f $HOME/.bash_secret ]; then
        . $HOME/.bash_secret # --> Read /etc/bashrc, if present.
fi

# Cool prompt
export PS1='\[\e[34m\]\u\[\e[0m\]$l > \[\e[34m\]\W \[\e[0m\]\$ '

export EDITOR=vim

export PATH="/usr/local/bin:$PATH:/usr/local/sbin"
export PATH="$PATH:/Applications/MATLAB_R2012a.app/bin"
export PATH="$PATH:/usr/local/share/npm/bin"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:/Users/dlaw/dev/storm/bin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home"

# text processing
alias grep="grep --color=always -n"
alias rgrep="grep -R"
alias gr="rgrep - . <<<"
alias to_tsv="sed -i '' 's/,/	/g'"
alias to_csv="sed -i '' 's/	/,/g'"
alias cutc='cut -c 1-150'

# random
alias sha256='shasum -a 256'

# bundler
alias be="bundle exec"

# postgres
alias pg_start='pg_ctl start -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias pp='python -mjson.tool'

knife(){
  bundle exec knife "$@"
}

# latex 
texinit(){
  git clone https://github.com/dieterichlawson/texenv.git $@
  mv $@/hwtemplate.tex $@/$@.tex
  rm -rf $@/.git
}

# history
shopt -s histappend
PROMPT_COMMAND='history -a'

# SBT options
export SBT_OPTS="-Xmx4G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"
