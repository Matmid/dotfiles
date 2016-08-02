# development tasks
alias vi="vim"
alias g="git"
alias gc="git checkout"
alias gs="git status"
alias gd="git diff"
alias gp="git pull"
alias gf="git fetch"
alias gg="git grep"
alias gl="git log"
alias grh="git reset head --hard"
alias b='bundle'
alias be='bundle exec'
alias rs='bundle exec rails s'
alias guard='title GUARD ${PWD##*/}; bundle exec guard && wait $!; title Console'
alias evergreen="be rails s -p 4000"
alias jo="be rake jobs:clear jobs:work"

# Directory Nav
alias ..="cd .."
alias ...="cd ../.."
alias dev="cd ~/dev"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# search functions
alias findfile='find . -iname'
alias inspect='du -csh'
alias fsearch='git ls-files | grep'
alias gga='function _gga(){ cd ~/development; for i in *; do ( cd $i; git grep "$1" HEAD ); done; cd -; };_gga'
alias talk_sh='function _talk_sh(){ while true; do (a+=100; say ok -r $a); done; };_talk_sh'

# MISC
alias weather='curl http://wttr\.in/Newcastle_Upon_Tyne'
