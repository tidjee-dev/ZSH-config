#!/bin/zsh

#===============================
#*        My launcher
#===============================


# Variables
# ---------

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BLACK='\033[0;30m'

# Background Colors
BG_RED='\033[0;41m'
BG_GREEN='\033[0;42m'
BG_YELLOW='\033[0;43m'
BG_BLUE='\033[0;44m'
BG_MAGENTA='\033[0;45m'
BG_CYAN='\033[0;46m'
BG_WHITE='\033[0;47m'
BG_BLACK='\033[0;40m'

# Text Styles
BOLD='\033[1m'
DIM='\033[2m'
ITALIC='\033[3m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
INVERT='\033[7m'

# Reset
RESET='\033[0m'

# Styles
TITLE="${BOLD}${BG_BLUE}${UNDERLINE}"
SUBTITLE="${BOLD}${CYAN}${UNDERLINE}"
LABEL="${UNDERLINE}"
LABEL2="${BOLD}${YELLOW}${UNDERLINE}"
COMMAND="${GREEN}${UNDERLINE}"

# Functions
# ---------

show_datetime() {
    echo -e "${CYAN}$(date)${RESET}\n"
}

connectedAs() {
    echo "${LABEL}Connected as:${RESET} ${YELLOW}$USER${RESET}@${MAGENTA}$(hostname)${RESET}\n"
}

# Commands
# --------

system_info() {
    echo "-----------------------"
    echo -e "| ${TITLE}System Information:${RESET} |"
    echo "-----------------------\n"
    echo "${LABEL2}OS:${RESET} $(uname -srm)"
    echo "${LABEL2}Uptime:${RESET} $(uptime -p)"
    echo "${LABEL2}CPU Usage:${RESET} $(top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4}')%"
    echo "${LABEL2}Memory Usage:${RESET} $(free -h | grep Mem | awk '{print $3 "/" $2}')\n"
    echo "-----------------------\n"
}

myHelp() {
    echo "\n${TITLE}Available commands & aliases:${RESET}"
    _commands
    _aliases
}

_commands() {
    echo "\n${SUBTITLE}Commands:${RESET}\n"
    echo "${COMMAND}myHelp${RESET} - Show this help message."
    echo "${COMMAND}system_info${RESET} - Show system information."
    echo "${COMMAND}zellij${RESET} - Start zellij session (multi panels terminal)."
    echo "${COMMAND}tree${RESET} - List all files in current directory in a tree format."
    echo "${COMMAND}fzf${RESET} - Search files in current directory with preview using fzf."
    echo "${COMMAND}btop${RESET} - Show system information using btop."
    echo "${COMMAND}fastfetch${RESET} - Show system information using fastfetch."
    echo "${COMMAND}lazygit${RESET} - Show git folder information using lazygit."
    echo "${COMMAND}colorscript${RESET} - Show color schemes using colorscript."
    echo "${COMMAND}tldr${RESET} - Show help information using tldr."
}

_aliases() {
    echo "\n${SUBTITLE}Aliases:${RESET}\n"
    echo "${COMMAND}home${RESET} - Go to your home directory."
    echo "${COMMAND}cls${RESET} - Clear the screen."
    echo "${COMMAND}lsa${RESET} - List all files in current directory, including hidden files."
    echo "${COMMAND}lsr${RESET} - List all files in current directory recursively."
    echo "${COMMAND}nanofzf${RESET} - Edit file using nano with preview using fzf."
    echo "${COMMAND}fd${RESET} - Search files in current directory using fdfind."
    echo "${COMMAND}src${RESET} - Reload .zshrc file."
    echo "${COMMAND}brewls${RESET} - List all installed Homebrew packages."
    echo "${COMMAND}brewi <name>${RESET} - Install Homebrew package."
    echo "${COMMAND}brews <name>${RESET} - Search for Homebrew package."
    echo "${COMMAND}brewupdate${RESET} - Update Homebrew packages."
    echo "${COMMAND}brewrm <name>${RESET} - Uninstall Homebrew package.\n"
}

# Main
# ----

clear
show_datetime
connectedAs
