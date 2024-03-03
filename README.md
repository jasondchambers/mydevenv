## Terminal 

On the Mac, I use [iTerm](https://iterm2.com) and have done for many years, although I may give [Alacritty](https://github.com/alacritty/alacritty) a shot at some point.

## Shell

Throughout my career, I've pretty much used them all: 

- 1990 - 1996 [csh](https://en.wikipedia.org/wiki/C_shell)
- 1997 - 1999 [ksh](https://en.wikipedia.org/wiki/KornShell)
- 2000 - 2015 [bash](https://www.gnu.org/software/bash/)
- 2015 -      [Oh My Zsh](https://ohmyz.sh).

Add these lines towards the end of the ~/.zshrc

    # Setup command line editing to vim
    bindkey -v
    bindkey ^R history-incremental-search-backward 
    bindkey ^S history-incremental-search-forward

## Miniconda

Used for managing multiple Python projects to avoid dependency conflicts.

[Minoconda](https://docs.anaconda.com/free/miniconda/index.html)

TODO - Miniconda seems to mess with the prettiness of the ohmyzsh - needs to be fixed.

## Neovim

Install/upgrade [Neovim](https://neovim.io) first.

Then, install [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). I don't have time to curate, configure and install all the plugins so kickstart gives me a good place to hang out for now.

Add these to ~/.config/nvim/init.lua to get relative line numbering and keyboard shortcuts:

    -- Jason's little hacks
    vim.wo.relativenumber = true
    vim.api.nvim_set_keymap('n', '<F1>', ':Telescope find_files<CR>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':Telescope buffers<CR>', {noremap = true, silent = true})

For Telescope to work properly, install these separately:

 - [ripgrep](https://github.com/BurntSushi/ripgrep)
 - [fd](https://github.com/sharkdp/fd)

 ## tmux

Visit the [Github page](https://github.com/tmux/tmux/wiki) to download if needed. 

## Obsidian

I've used many notetaking apps over the years. I eventually settled on using Apple Notes, but one day I entered a shopping list on my iMac, then went to the store expecting to find the notes sync'd on my iPhone. It wasn't. Since then, I've been moving away from Notes to Obsidian. I rely on Apple iCloud to sync the vault as I already have a subscription. I gradually moving away from Dropbox too. The plug-ins I use are:

![Obsidian plugins](Obsidianplugins.png)

I also turn on vim editing as follows:

![Turning on VIM key bindings](Obsidianvim.png)



