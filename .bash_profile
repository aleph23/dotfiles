
function parse_git_branch_and_add_brackets {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

PS1="\[\e]2;\\W : \h \a\e\]\[\e[36;1m\]\u\[\e[32m\]@\[\e[31;1m\]\h \[\e[32m\]\W\$(parse_git_branch_and_add_brackets)\$\[\\e[0m\] "

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk
JDK_HOME=$JAVA_HOME

PATH=/usr/local/git/bin:~/bin:/usr/local/bin:$PATH

# source ~/bin/mvncolor.sh
source ~/.bash_aliases
