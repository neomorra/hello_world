# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ $HOME/.local/bin:$HOME/bin: ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH=/opt/node/bin:$PATH
export PATH=/opt/magia/bin:/opt/liquibase:$PATH
#export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export LANG=it_IT.UTF-8
export JAVA_HOME=/opt/jdk11/
#source ~/.nnnrc
#source /usr/share/icons-in-terminal/icons_bash_export.sh
XDG_CONFIG_DIR=~/.config
for file in $(find $XDG_CONFIG_DIR/shell/ ! -iname *zsh\* -type f ); do 
    source $file
done;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
