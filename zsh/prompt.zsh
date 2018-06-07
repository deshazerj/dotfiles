setopt prompt_subst

function git_status() {
  BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  if [ ! -z $BRANCH ]; then
    echo -n $'%{\e[37m%} on %{\e[95m%}'$BRANCH' '
    if [ ! -z "$(git status --short)" ]; then
      echo -n $'%{\e[34m%}[!]'
    fi
  fi
}

PS1=$'%{\e[91m%}%n ' # username
PS1+=$'%{\e[37m%}@ ' # @
PS1+=$'%{\e[33m%}%m ' # host
PS1+=$'%{\e[37m%}: ' # :
PS1+=$'%{\e[32m%}%~' # pwd
PS1+=$'$(git_status)' # git status
PS1+=$'%{\e[0m%}\n$ ' # line break and $