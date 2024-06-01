# OS

I develop on both Linux and macOS. It depends on what I'm working on and how I'm feeling. The project I am working on may require something special. The dual approach to development tests both the portability of my development environment and my ability to recover/rebuild if necesssary. To make switching as less jarring as possible, I use as much of the same tools as and where possible. The only point of friction that tests my muscle memory and my patience is the good old copy/paste keyboard shortcuts between macOS and Linux.

Credit to [typecraft](https://www.youtube.com/watch?v=ZDV4edcaXSY) for providing the inspiration to bring my terminal experience bang up to date.

## Terminal

On the Mac, I use [iTerm](https://iterm2.com) and have done for many years, although I may give [Alacritty](https://github.com/alacritty/alacritty) a shot at some point.

## Fonts

Hack Nerd Font from [Nerdfonts](https://www.nerdfonts.com/font-downloads).

## Color Theme

I use [Catppuccin - Mocha](https://github.com/catppuccin/catppuccin) for the terminal, bat and Neovim.

## Shell

Throughout my career, I've pretty much used them all:

- 1990 - 1996 [csh](https://en.wikipedia.org/wiki/C_shell)
- 1997 - 1999 [ksh](https://en.wikipedia.org/wiki/KornShell)
- 2000 - 2015 [bash](https://www.gnu.org/software/bash/)
- 2015 - 2024 [zsh](https://zsh.sourceforge.io) + [Oh My Zsh](https://ohmyz.sh)
- 2024 - Pres [zsh](https://zsh.sourceforge.io) + [Starship](https://starship.rs)

Zsh is now the default on macOs - just make sure it is a recent version. It typically will need to be installed on Linux.

I use [Minoconda](https://docs.anaconda.com/free/miniconda/index.html) for managing multiple Python projects to avoid dependency conflicts. Be sure to install first before Starship otherwise it will stomp all over the terminal colors.

I recently switched to [Starship](https://starship.rs) using the [Gruvbox Rainbow Preset](https://starship.rs/presets/gruvbox-rainbow). Once "Gruvbox Rainbow Preset" has been installed, it will not be using the Catppuccin theme because it comes with it's own color theme. You can fix that by dropping in the starship.toml file from my [dot-files repo](https://github.com/jasondchambers/dot-files).

Refer to my [dot-files repo](https://github.com/jasondchambers/dot-files). Clone this repo into $HOME. Use GNU stow to create the symlinks from ~/.config into the dot-files to simplify management of the dot-files.

## Neovim

Install/upgrade [Neovim](https://neovim.io) first.

For Telescope to work properly, install these separately:

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)

Lazy is used to manage plugins. Access via :Lazy from within Neovim.

For the LSP to work, npm is needed to be installed. Install this via [nvm](https://github.com/nvm-sh/nvm). Node can be installed as follows:

    $ nvm install node

Manage LSP via :Mason from within Neovim. pyright is what I use for Python. svelte-language-server is what I use for Svelte.

## tmux

Visit the [Github page](https://github.com/tmux/tmux/wiki) to download if needed.

Be sure to install TPM first

    $ git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm/

The .tmux.conf file can be found in my [dot-files repo](https://github.com/jasondchambers/dot-files). Simply copy over into ~/.tmux.conf. If tmux still looks bland, tpm has not been installed properly - the fix is to manually run this:

    $ ~/.tmux/plugins/tpm/scripts/install_plugins.sh

## Docker

I used Docker desktop on macOS. I just use vanilla Docker on Linux.

## CLI Tools

- [fzf](https://github.com/junegunn/fzf)
- [fzf-git.sh](https://github.com/junegunn/fzf-git.sh)
- [bat](https://github.com/sharkdp/bat)
- [wget](https://www.gnu.org/software/wget/)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

## Cheatsheet

### Neovim

| Function keys       | Handy Reminders                            |
| ------------------- | ------------------------------------------ |
| F1 - Telescope find | :WhichKey to show key mappings             |
| F2 - Buffers        | :Lazy to manage plugins                    |
| F3 - Neotree        | :Mason to manage LSP                       |
| F4 - Neotree close  | :vsplit                                    |
| F5 - Gitsigns       | :split                                     |
| F6 - Livegrep       | C-w q (quit pane)                          |
|                     | :MarkDownPreview to preview markdown files |
|                     | "+yy to yank to system clipboard           |
|                     | Leaderkey = <space>                        |

### Tmux

| Handy Reminders                      |
| ------------------------------------ |
| **CLI**                              |
| $ tmux ls                            |
| $ tmux new -s \<session>             |
| $ tmux a -t \<session>               |
| $ tmux kill-session -t \<session>    |
| Leaderkey = C-b                      |
| **Sessions**                         |
| \<Leader> d detach                   |
| \<Leader> s switch                   |
| \<Leader> C-s save session           |
| \<Leader> C-r restore session        |
| **Windows**                          |
| \<Leader> c created                  |
| \<Leader> w - see all panes/sessions |
| **Panes**                            |
| \<Leader> Esc resize                 |
| \<Leader> m maximize/minimize        |
| \<Leader> r reload                   |
| \<Leader> - split horizontal         |
| \<Leader> \| split vertical          |
| \<Leader> \[ scroll (q to quit)      |

## FZF

Instead of:

    $ nvim `fzf`

Do this instead:

    $ nvim C-t

History search (C-r) has been setup to use fzf

## Seamless Neovim and Tmux pane naviation

Thanks to the wonderful [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator):

| Handy Reminders |
| --------------- |
| C-h left pane   |
| C-j down pane   |
| C-k up pane     |
| C-l right pane  |

## Jupyter Notebook

Depending on what I'm working on, I may choose to use Jupyter Notebook (classic not JupyterLab).

## Obsidian

I've used many notetaking apps over the years. I eventually settled on using Apple Notes, but one day I entered a shopping list on my iMac, then went to the store expecting to find the notes sync'd on my iPhone. It wasn't. Since then, I've been moving away from Notes to Obsidian. I rely on Apple iCloud to sync the vault as I already have a subscription. I gradually moving away from Dropbox too. The plug-ins I use are:

![Obsidian plugins](Obsidianplugins.png)

I also turn on vim editing as follows:

![Turning on VIM key bindings](Obsidianvim.png)
