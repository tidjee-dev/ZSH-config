## Spaceship ##

SPACESHIP_PROMPT_ORDER=(
    time          # Time stamps section
    user          # Username section
    host          # Hostname section
    dir           # Current directory section
    git           # Git section (git_branch + git_status)
    node          # Node.js section
    python        # Python section
    docker        # Docker section
    exec_time     # Execution time
    line_sep      # Line break
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    sudo          # Sudo indicator
    char          # Prompt character
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX="⌚️ "
SPACESHIP_TIME_COLOR="cyan"
SPACESHIP_TIME_FORMAT='%D{%Y-%m-%d} %*'
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR="yellow"
SPACESHIP_USER_PREFIX="as 👨 "
SPACESHIP_USER_SUFFIX=""
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_PREFIX=" @ 💻 "
SPACESHIP_HOST_COLOR="magenta"
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX="in 📁 "
SPACESHIP_DIR_COLOR="green"
SPACESHIP_GIT_BRANCH_COLOR="cyan"
SPACESHIP_GIT_STATUS_COLOR="red"
SPACESHIP_GIT_STATUS_PREFIX="("
SPACESHIP_GIT_STATUS_SUFFIX=")"
SPACESHIP_PYTHON_PREFIX="using 🐍 "
SPACESHIP_JOBS_PREFIX="took ⌚️ "
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_JOBS_SHOW=true
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
