# tmux-start and friends

`tmux-start` enables multiple users to join the same tmux session on a given Linux machine. This is very useful for pair programming, screen sharing during demos, or even just rejoining a given session of your own from another machine.
Also included here are `vim` and `git` config files. When sharing sessions, it's important for all users to have the same configurations for the tools being used within the session.

# installation

To set up a Linux machine for shared tmux sessions:

```bash
$> sudo ./install.sh
```

It should be noted this installs system level git, tmux, and vim config files, but any existing ones will be saved with `.bak` appended to the filename. It may be necesary to make sure these new system level config files don't conflict with any user-level config files in `/home/<user>` or elsewhere.

# post installation

The first time `vim` is opened, plugins will be installed automatically. It might be necessary to quit `vim` and re-open it after plugin installation to make sure all settings take effect.

# usage

```bash
$> tmux-start [session-name]
```

If no `session-name` is specified, the default `shared` session is created/joined.

## learning tmux

Tmux is a terminal multiplexer. It lets you `ssh` into a machine once, join a tmux session, and operate multiple shell prompts without having to individually `ssh` to a machine with multiple temerinals. This means the split panes and workspace configuration live on the remote machine, instead of locally. This makes it easy to save, share, and continue sessions no matter where you are without the need for heavy UI forwarding.

Generally speaking, tmux takes commands by listening for a "leader". By default `ctrl`+`b` serves as the leader, telling tmux that you're about to give it a command to do something (ie - split a pane vertically or horizontally, move focus to another pane, etc). To split the current pane horrizontally, for example, you would press the leader keys followed by `s` (`ctrl`+`b` followed by `s`). This seems cumbersome at first, but actually becomes very intuitive after just a few hours of usage. This concept carries throughout the rest of tmux, leader keys followed by command. Couple this with vim and you just may never touch a mouse again!

For tmux specific usage, [this cheatsheet](https://gist.github.com/MohamedAlaa/2961058) is pretty useful. Keep in mind that some of the default behaviors have been remapped in the `tmux.conf` file in this repository.

## learning vim

Vim is a text editor based on the original `vi` released in 1976. It is very handy for editing text files on remote servers due to its ubiquity on almost all unix machines.

Vim operates on the concept of modes, the main two of which are command mode and insert mode. Command mode allows you to move throughout the file using command squences strung together with keystrokes (no mouse!). Once movement throughout the file has placed the cursor in the desired location, you enter insert mode to actually type new text into the file. There are plenty of other layers to vim which make it a very powerful text editor (buffers, registers, and macros just to name a few), but understanding them isn't required to get started. With enough practice you will eventually [Grok Vim](https://stackoverflow.com/a/1220118).

## tmux and vim together

Individually, these tools are great. But, used together they can unlock some pretty effective workflows for not only you, but your team. The true potential of pair programming comes from a shared usage of tools that enables the two individuals to work more smoothly as a unit. Eliminating the friction of cramped side-by-side pair programming with shared tmux sessions and a common text editor means team mates are more likely to pair and share context of the complex systems they work on. Plus, tmux and vim make you feel like a real hacker!
