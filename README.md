# Bash Scripts
Terminal formatting and commmands for common tasks.

## Install
Create **configs** file using template then run install. Install will overwrite current .bashrc.

```bash
./install
```

## Scripts
- **wd [directory]** (located in aliases, must run in same instance)
    - cd /path/to/dir/$1
    - ls
- **np [source] [destination]**
    - cp [source] [destination]
    - cd [destination]
    - if exists, remove .git directory

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
- **git-log:** Print formatted log
- **git-update:** Rebase pull, updates submodules
- **git-publish:** Push current branch
- **git-undo:** Reset and unstage last commit (mixed reset)
