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
    echo -e "\n${CYAN}$(date)${RESET}\n"
}

welcomeMessage() {
    echo "Welcome back!\n"
    echo "You are connected to ${MAGENTA}$HOSTNAME${RESET} as ${YELLOW}$USER${RESET}.\n"
    echo "The current directory is ${BLUE}$(pwd)${RESET}.\n"
    echo "${COMMAND}myHelp${RESET} - Show available commands and aliases.\n"
}

# Commands
# --------

myHelp() {
    echo "\n${TITLE}Available commands & aliases:${RESET}"
    _commands
    _aliases
}

_commands() {
    echo "\n${SUBTITLE}Commands:${RESET}\n"
    echo "${COMMAND}myHelp${RESET} - Show this help message."
    echo "${COMMAND}zellij${RESET} - Start zellij session (multi panels terminal)."
    echo "${COMMAND}tree${RESET} - List all files in current directory in a tree format."
    echo "${COMMAND}fzf${RESET} - Search files in current directory with preview using fzf."
    echo "${COMMAND}btop${RESET} - Show system information using btop."
    echo "${COMMAND}lazygit${RESET} - Show git folder information using lazygit."
    echo "${COMMAND}lazydocker${RESET} - Show docker folder information using lazydocker."
    echo "${COMMAND}tldr${RESET} - Show help information using tldr."
}

_aliases() {
    echo "\n${SUBTITLE}Aliases:${RESET}\n"
    echo "${COMMAND}home${RESET} - Go to your home directory."
    echo "${COMMAND}cls${RESET} - Clear the screen."
    echo "${COMMAND}lsa${RESET} - List all files in current directory, including hidden files."
    echo "${COMMAND}lsr${RESET} - List all files in current directory recursively."
    echo "${COMMAND}tree${RESET} - List all files in current directory in a tree format."
    echo "${COMMAND}nanofzf${RESET} - Edit file using nano with preview using fzf."
    echo "${COMMAND}fd${RESET} - Search files in current directory using fdfind."
    echo "${COMMAND}src${RESET} - Reload .zshrc file."
    echo "${COMMAND}brewls${RESET} - List all installed Homebrew packages."
    echo "${COMMAND}brewi <name>${RESET} - Install Homebrew package."
    echo "${COMMAND}brews <name>${RESET} - Search for Homebrew package."
    echo "${COMMAND}brewupdate${RESET} - Update Homebrew packages."
    echo "${COMMAND}brewrm <name>${RESET} - Uninstall Homebrew package."
    echo "${COMMAND}nvmi <version>${RESET} - Install Node.js version."
    echo "${COMMAND}nvmilts <version>${RESET} - Install Node.js LTS version."
    echo "${COMMAND}nvmu <version>${RESET} - Use Node.js version."
    echo "${COMMAND}nvmults${RESET} - Use Node.js LTS version."
    echo "${COMMAND}nvmrm <version>${RESET} - Uninstall Node.js version.\n"
}

# Main
# ----

clear
show_datetime
welcomeMessage
