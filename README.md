# My Development Environment

My development environment is documted in this [article](https://circleinaspiral.com/posts/devenv/).

My dot-files are avilable [here](https://github.com/jasondchambers/dot-files).

## Cheatsheet

### Alacritty

| Mac                           | Linux                   |
| ----------------------------- | ----------------------- |
| Launch - Use Alfred           | Launch - Windowskey + T |
| Increase fontsize - Alt + "+" |                         |

### Neovim

| Function keys       | Handy Reminders                            |
| ------------------- | ------------------------------------------ |
| F1 - Telescope find | :WhichKey to show key mappings             |
| F2 - Buffers        | :Lazy to manage plugins                    |
| F3 - Neotree        | :Mason to manage LSP                       |
| F4 - Neotree close  | :vsplit                                    |
| F5 - Gitsigns       | :split                                     |
| F6 - Livegrep       | C-w q (quit pane)                          |
| F12 - Goto defn     | "+yy to yank to system clipboard           |
|                     | Leaderkey = <space>                        |

### Cursor 

For AI assisted coding, I use Cursor. Switching from VSCode, I miss the sync settings feature as I work on multiple machines.
Extensions:

- Svelte for VS Code (svelte)
- Python (ms-python)
- Vim (vscodevim)

Settings are stored in ~/Library/Application Support/Cursor/User/settings.json

| Handy Reminders                      |
| ------------------------------------ |
| Cmd+P - find file                    |
| F12 - goto definition                |


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
| \<Leader> I - reload TPM             |
| \<Leader> \[ scroll (q to quit)      |

## FZF

Instead of:

    $ nvim `fzf`

Do this instead:

    $ nvim C-t

History search (C-r) has been setup to use fzf

To kill a process, instead of ps, find the pid, copy, paste into kill -9, simply do this:

    $ kill -9 **<tab>

FZF is a game changer.

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
