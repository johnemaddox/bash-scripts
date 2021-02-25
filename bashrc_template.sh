export PATH=INSERT_BASE_DIR/scripts:$PATH
export BASH_SCRIPTS_DIR=INSERT_BASE_DIR

# always load configs first
if [ ! -f "INSERT_BASE_DIR/configs.sh" ]; then
    echo "ERROR: Bash config file not found."
    echo "       Run bash-cfg to create one."
else
    source INSERT_BASE_DIR/configs.sh
fi

if [ ! -d "$WORK_DIR" ]; then
    echo "ERROR: Work Directory ($WORK_DIR) does not exist."
    echo "       Run bash-cfg to edit path."
fi

source INSERT_BASE_DIR/aliases.sh
source INSERT_BASE_DIR/functions.sh

# prompt format, includes git branch
git_branch () { git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
export PS1="\[\033[32m\]\h \[\033[36m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\] \$ "
