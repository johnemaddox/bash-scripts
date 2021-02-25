# Bash Scripts
Terminal formatting and commmands for common tasks.

## Install
Install overwrites current .bashrc and creates a **configs** file if one does not exist.

```bash
./install
```

## System
- **wd:** cd and ls work_dir
- **bash-cfg:** quick access to config file

## Python
- **python:** python3
- **pip:** pip3
- **pip-upgrade**

## Docker
- **dc:** docker-compose
- **dcr:** docker-compose run --rm
- **dex:** docker exec -it
- **dxx:** docker system prune --all --volumes --force
- **dkc:** docker kill $(docker ps -q)

## Git
- **git-log (script):** Print formatted log
- **git-publish (script):** Push current changes
- **git-reset (script):** Drops local changes
- **git-squash (script):** Squashes commits down into a single commit
- **git-undo \[num] (script):** Undoes one or more commits, defaults to one. Changes are moved to unstaged state
- **git-update (script):** Rebase pull, updates submodules
