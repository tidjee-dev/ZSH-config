# ZSH-config

My personal config for terminal. 🖥️

## Installation

### ZSH

`zsh` is a shell (like `bash` or `fish`) but with more features and customization.
It's the default shell on macOS.

- Install `zsh`

  - Linux (Debian, Ubuntu) or Windows (WSL):

    ```bash
    sudo apt install zsh
    ```

  Run `zsh --version` to check that it is installed correctly.

- Change default shell to `zsh`

  ```bash
  chsh -s $(which zsh)
  ```

- Log out and log in again to make the change take effect.

- Verify that the default shell is `zsh`

  If it output `/bin/zsh`, it is installed correctly.

  ```bash
  echo $SHELL
  ```

#### Oh-my-zsh

`oh-my-zsh` is a plugin and theme manager for ZSH.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Homebrew

`homebrew` is a package manager for macOS and Linux.

- Prerequisites for using on Linux or Windows (WSL)

  ```bash
  sudo apt-get install build-essential procps curl file git
  ```

- Install Homebrew

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

### Plugins

#### zsh-syntax-highlighting

`zsh-syntax-highlighting` add syntax highlighting to your terminal.

Run the following command to install the plugin in your oh-my-zsh custom plugins directory:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### zsh-autosuggestions

`zsh-autosuggestions` add autosuggestions based on history to your terminal.

Run the following command to install the plugin in your oh-my-zsh custom plugins directory:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### zsh-completions

`zsh-completions` add completions for non-native commands.

Run the following command to install the plugin in your oh-my-zsh custom plugins directory:

```bash
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```

Add the following to your `.zshrc` file:

```bash
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
```

#### lsd

`lsd` is an upgraded version of `ls`.
It adds features and more customization to `ls`.

- Prerequisites: Install a Nerd Font (like FiraCode)

  - Enable the universe repository

    ```bash
    sudo add-apt-repository universe
    sudo apt update
    ```

  - Install the FiraCode font

    ```bash
    sudo apt install fonts-firacode
    ```

- Using Homebrew

  ```bash
  brew install lsd
  ```

- Using APT on Linux (Debian, Ubuntu) or Windows (WSL)

  ```bash
  sudo apt install lsd
  ```

- Set an alias to `lsd` by writing the following line in your `.zshrc` file

  ```bash
  alias ls='lsd'
  ```

> [!TIP]
> Create and customize the aliases on your needs. See the [Aliases](#aliases) section.

#### bat

`bat` is an upgraded version of `cat`.
It let you see the content of files in a human friendly way with features like syntax highlighting, git integration and number of lines.

- Using Homebrew

```bash
brew install bat
```

- Using APT on Linux (Debian, Ubuntu) or Windows (WSL)

```bash
sudo apt install bat
```

#### fzf

`fzf` is a command-line fuzzy finder.
It let you search for files and commands in your terminal.

- Using Homebrew

```bash
brew install fzf
```

> [!TIP]
> Want to customize the theme of your `fzf`? Look at this: [fzf themes customizer](https://vitormv.github.io/fzf-themes/).

#### btop

`btop` is a graphical monitoring tool.

- Using Homebrew

```bash
brew install btop
```

#### tldr

`tldr` let you look up the documentation of commands in a more human friendly way.

- Using Homebrew

```bash
brew install tldr
```

#### zellij

`zellij` is a terminal multiplexer.
It let you have multiple terminals in the same window using tabs and panels.

- Using Homebrew

```bash
brew install zellij
```

#### atuin

`atuin` is a command-line shell history manager.

- Using Homebrew

```bash
brew install atuin
```

#### nvm

`nvm` is a Node.js version manager.
It let you easily switch between different versions of Node.js.

- Using Homebrew

```bash
brew install nvm
```

### Theme

#### Spaceship

`spaceship` is a minimalist but stylish theme for oh-my-zsh.

```bash
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Set `ZSH_THEME="spaceship"` in your `.zshrc` file.

## Configuration

### .zshrc

<details>
  <summary>Click to expand and see the config</summary>

```bash
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="fino-time"
ZSH_THEME="spaceship"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true" # default
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting
    docker
    docker-compose
    sudo
    fzf
    )

source $ZSH/oh-my-zsh.sh

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks

if [ ! -f ~/.zsh_history ]; then
    touch ~/.zsh_history
fi

## LSD ##
command -v lsd > /dev/null

## Aliases ##
source $ZSH_CUSTOM/my_aliases.zsh

## Spaceship ##
source $ZSH_CUSTOM/themes/my-spaceship-config.zsh

## NVM ##
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## ZSH Completions ##
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

## Homebrew ##
test -d /opt/homebrew && eval "$(/opt/homebrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## Atuin ##
eval "$(atuin init zsh --disable-up-arrow)"

## Zellij ##
eval "$(zellij setup --generate-auto-start zsh)"

#===============================
#*        My launcher
#===============================
source $ZSH_CUSTOM/my_launcher.zsh
```

</details>

### Aliases

<details>
  <summary>Click to expand and see the config</summary>

```bash
#===================
#*     Aliases
#===================

alias home='cd ~ && clear'
alias ls='lsd -lt --group-dirs=first --hyperlink=always'
alias lsa='lsd -alt --group-dirs=first --hyperlink=always'
alias lsr='lsd -ltR --group-dirs=first --hyperlink=always'
alias tree='lsd --tree --hyperlink=always'
alias cat='bat --paging=never'
alias cls='clear'
alias fzf='fzf --preview="bat --color=always {}"'
alias nanofzf='nano $(fzf)'
alias fd='fdfind'
alias src='source ~/.zshrc'
alias nano='sudo nano'
alias brewls='brew list'
alias brewi='brew install'
alias brews='brew search'
alias brewupdate='brew update && brew upgrade && brew cleanup'
alias brewrm='brew uninstall'
alias nvmi='nvm install'
alias nvmilts='nvmi --lts'
alias nvmu='nvm use'
alias nvmults='nvmu --lts'
alias nvmrm='nvm uninstall'
alias nvmrmlts='nvmrm --lts'
```

</details>

### Setup Spaceship

<details>
  <summary>Click to expand and see the config</summary>

```bash
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
```

</details>

### Custom launcher

<details>
  <summary>Click to expand and see the config</summary>

```bash

```

</details>

## Sources

- [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [homebrew](https://github.com/Homebrew/install)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [lsd](https://github.com/lsd-rs/lsd)
- [bat](https://github.com/sharkdp/bat)
- [fzf](https://github.com/junegunn/fzf)
- [btop](https://github.com/aristocratos/btop)
- [tldr](https://github.com/tldr-pages/tldr)
- [zellij](https://github.com/zellij-org/zellij)
- [atuin](https://github.com/ellie/atuin)
- [nvm](https://github.com/nvm-sh/nvm)
- [spaceship](https://github.com/spaceship-prompt/spaceship-prompt)
