
wd () {
    if [ ! -d "$WORK_DIR/$1" ]; then
        echo "ERROR: Directory ($WORK_DIR/$1) does not exist."
    else
        cd "$WORK_DIR/$1"
        ls --color=auto
    fi
}

bash-cfg () {
    config_file=$BASH_SCRIPTS_DIR/configs.sh

    if [ -f "$config_file" ]; then
        vi $config_file
    else
        $BASH_SCRIPTS_DIR/install
    fi
}
