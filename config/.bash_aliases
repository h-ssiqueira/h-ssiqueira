# Updates
alias update-repos='find ~/Documents/GitHub -type d -name .git -exec sh -c '\''cd $(dirname {}); repo=$(basename $(dirname {})); echo "$repo" && git pull && echo;'\'' \;'
alias status-repos='find ~/Documents/GitHub -type d -name .git -execdir sh -c '\''echo "$(basename "$(pwd)")"; git status && echo && echo;'\'' \; -prune'
alias update-apps='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && echo "PROGRAMS ARE UP TO DATE"'
# Dir
alias cd..='cd ..'
# Ports
alias ports='netstat -tulanp'
# Docker
alias start-rabbitmq='docker run --rm -dit -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest -p 5672:5672 -p 15672:15672 rabbitmq:3-management'
alias sdi='docker images -a'
alias start-mysql='docker start mysql-db'
alias start-postgres='docker start postgres-db'
alias remove-none-images="docker image prune -f"
# Java
alias change-java='sudo update-alternatives --config java'
alias dependency-check='mvn org.owasp:dependency-check-maven:aggregate'
