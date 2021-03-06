# .bashrc
export PS1="[\!]\[\033[1;32m\][\h][\l][\s](\t)\[\033[5;36m\][\j]\[\033[01;35m\](\u)\[\033[00m\] : \[\033[04;34m\]\w\[\033[00m\]\n\$"

PROMPT_COMMAND='echo -ne "\033]0;*Terminal of Jackie*\007"'

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -alF --color=always' # -X sort by extension
alias lx='ls -alFX --color=always' # -X sort by extension
alias lz='ls -alF --sort=size --color=always' # -X sort by extension
alias lt='ls -alFcpt --color=always' # -X sort by extension
alias l='ls -aF --color=always'
alias lh='ls -alFh --color=always'
alias hhh='head -n 1 '
alias ttt='tail -n 1 '
alias vi='vim -u ~/.myvimrc'
alias gp='grep --color=always -n'
#alias m='mysql -S /nfs/data/mysql.sock'
#alias m='mysql -P 3306 -u root --host=ubu'

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi


export ZLIB_LIBRARY=/lib64
export ZLIB_INCLUDE_DIR=/usr/lib/include

#export BOOST_ROOT=/nfs/boost
#export BOOST_HOME=/nfs/boost
#export JAVA_HOME=/nfs/jdk
#
#export PYTHONHOME273=/nfs/python273
#export PYTHONHOME3=/nfs/python3
##export PATH=$JAVA_HOME/bin:$PYTHONHOME/bin:$PATH:/usr/local/bin
#export PATH=$JAVA_HOME/bin:$PATH:/usr/local/bin:$PYTHONHOME273/bin:$PYTHONHOME3/bin

#a function to git push ASAP
ggg(){
  git add -u && git commit -m "$1" && git push # ' -> "
}
pymod(){
  python -c "import $1;print($1.__file__)"
}

#[c58][3][-bash](18:06:02)[0](root):/nfs/software[1034]
#$wget https://pypi.python.org/packages/source/F/Flask/Flask-0.10.tar.gz
#--2013-12-13 18:06:34--  https://pypi.python.org/packages/source/F/Flask/Flask-0.10.tar.gz
#Resolving pypi.python.org... 103.245.222.184
#Connecting to pypi.python.org|103.245.222.184|:443... connected.
#ERROR: certificate common name `*.a.ssl.fastly.net' doesn't match requested host name `pypi.python.org'.
#To connect to pypi.python.org insecurely, use `--no-check-certificate'.
#Unable to establish SSL connection.
alias wget='wget --no-check-certificate'
alias ccat='pygmentize -g'
alias glog='git log --color --graph --stat'
alias gshow='git show --color'
alias gdiff='git diff --color'

# To list all files for a specific branch, e.g. master
alias gls='git ls-tree -r master --name-only'

# To get a list of all files that ever existed
alias gll='git log --pretty=format: --name-status | cut -f2- | sort -u'

export PYTHONSTARTUP=~/.python_init.py
ulimit -c unlimited
#mount -t nfs c58:/nfs/ /nfs

export EDITOR='vi'
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# For searching history based on prefix
shopt -s histappend
export PROMPT_COMMAND='history -a'
if [[ $- =~ i ]]; then
  bind '"\e[A"':history-search-backward
  bind '"\e[B"':history-search-forward
  bind '"\M-k"':"\"\C-ahistory -s '\C-e'\C-m\""
  bind '"\M-w"':"\"\C-k\C-ahistory | grep '^ *[0-9]* *\C-e.'\C-m\""
fi

alias gdiff2='git difftool --tool=vimdiff -U99999'

alias ocamlenv='eval $(opam config env)'
alias ocaml='rlwrap ocaml'

#cd ~
#git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_SHOW_UPSTREAM=1
GIT_PROMPT_SHOW_UNTRACKED_FILES=no
#source ~/.bash-git-prompt/gitprompt.sh


# for pandoc - https://github.com/jgm/pandoc/blob/master/INSTALL.md
#export PATH=/root/.local/bin:$PATH

export HISTSIZE=500000
export PATH=$PATH:/opt/share/cling/bin
export PATH=/usr/local/texlive/2017/bin/x86_64-linux:$PATH
export PATH=/opt/data/eclipse:$PATH
export PATH=/root/data/clion-2017.1.3/bin:$PATH

export ICAROOT="/opt/Citrix/ICAClient/ICAClient"

#google-drive-ocamlfuse ~/google-drive/

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export PATH=$PATH:/usr/lib/postgresql/9.5/bin/

# mysql -u root -p\`

alias startvms='for i in `seq 0 6`; do virsh start u$i ; done'
alias stopvms='for i in `seq 0 6`; do virsh shutdown u$i ; done'
alias startredis='for i in `seq 0 2`; do virsh start u$i ; done'
alias stopredis='for i in `seq 0 2`; do virsh shutdown u$i ; done'

export PATH=$PATH:/opt/share/redis/src


export HADOOP_HOME=/opt/share/hadoop
export HADOOP_INSTALL=$HADOOP_HOME
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin

export SPARK_HOME=/opt/share/spark
export PATH=${SPARK_HOME}/bin:$PATH

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH

export PATH=/opt/share/software/hue/build/env/bin:$PATH

export HIVE_HOME=/opt/share/hive
export PATH=$HIVE_HOME/bin:$PATH


export KAFKA_HOME=/opt/share/kafka
export PATH=$KAFKA_HOME/bin:$PATH

export CASSANDRA_HOME=/opt/share/cassandra
export HOSTNAME=`hostname`
export CASSANDRA_CONF=$CASSANDRA_HOME/conf.$HOSTNAME
export PATH=$CASSANDRA_HOME/bin:$PATH

export CLASSPATH=$CLASSPATH:$HADOOP_HOME/lib/*
export CLASSPATH=$CLASSPATH:$HIVE_HOME/lib/*
export CLASSPATH=$CLASSPATH:$CASSANDRA_HOME/lib/*

export STORM_HOME=/opt/share/storm
export PATH=$STORM_HOME/bin:$PATH

export ZOOKEEPER_HOME=/opt/share/zk
export ZOOCFGDIR=$ZOOKEEPER_HOME/conf
export PATH=$ZOOKEEPER_HOME/bin:$PATH

export CLASSPATH=$CLASSPATH:$STORM_HOME/lib/*

export MESOS_HOME=/opt/share/mesos_build
export PATH=$MESOS_HOME/bin:$MESOS_HOME/sbin:$PATH

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$JAVA_HOME/bin:$PATH


