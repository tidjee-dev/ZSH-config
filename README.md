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

    > [!note]
    > You can check if it's installed by running `zsh --version`.

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

#### bat

`bat` is an upgraded version of `cat`.
It let you see the content of files in a human friendly way with features like syntax highlighting, git integration and number of lines.

```bash

```

#### fzf

`fzf` is a command-line fuzzy finder.
It let you search for files and commands in your terminal.

#### btop

`btop` is a graphical monitoring tool.

#### tldr

`tldr` let you look up the documentation of commands in a more human friendly way.

#### zellij

`zellij` is a terminal multiplexer.
It let you have multiple terminals in the same window using tabs and panels.

#### atuin

`atuin` is a command-line shell history manager.

#### nvm

`nvm` is a Node.js version manager.
It let you easily switch between different versions of Node.js.

### Theme

#### Spaceship

`spaceship` is a minimalist but stylish theme for oh-my-zsh.

## Configuration

### .zshrc

### Aliases

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
