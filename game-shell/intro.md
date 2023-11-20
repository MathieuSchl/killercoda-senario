# Welcome to GameShell

Teaching first-year university students or high schoolers to use a Unix shell
is not always the easiest or most entertaining of tasks. GameShell was devised
as a tool to help students at the
[Université Savoie Mont Blanc](https://univ-smb.fr) to engage with a *real*
shell, in a way that encourages learning while also having fun. 

This is an environnement in Killercoda for GameShell.
I haven't developed the game, the game repo is available [here](https://github.com/phyver/GameShell)

Playing GameShell, standard commands
------------------------------------

Playing GameShell involves very few game-specific commands. They are

* `gsh goal`: displays the current mission's goal. If the goal doesn't fit on
  the screen, it is paginated with the `less` or `more` command.

* `gsh check`: checks if the current mission is completed. If so, a
  congratulation message is displayed, and the player starts the next mission.
  If not, the mission is reset.
  A player can run `gsh check` as many times as she wants.

* `gsh reset`: if the player messed up the mission by removing an important
  file, this command will try to reset the mission, without checking for
  completion first.
  In rare cases, `gsh hardreset` might be necessary.

* `gsh help`: displays a small message with this very information.

<br>
<details><summary>Other commands</summary>
  
Playing GameShell, other commands
---------------------------------

In some situations, some other commands are needed. They are described by the
`gsh HELP` command. Here are the main ones.

* `gsh skip`: it has unfortunately happened that some bug prevented a mission
  to be completed successfully. The command `gsh skip` will cancel the
  current mission and go to the next one. Running this command will first ask
  for a password to avoid students overusing it. (Just
  like most other `gsh` commands, the use of this command is logged.)
  Note however that skiping a mission that has already been completed doesn't
  require a password.

* `gsh goto N`: when the previous command isn't sufficient, `gsh goto N`
  which will go directly to mission `N`. Just like `gsh skip`, this command
  will first ask for a password.
  Note however that going back to a previous mission doesn't require a
  password.

* `gsh protect` and `gsh unprotect`: the directories containing GameShell code
  and data are neither readable nor writable by the player. (Except in debug
  mode, or when running from the source repository.) That's to prevent
  accident where a player inadvertently removes some important file. Those
  commands reset the read / write permissions.

* `gsh auto`: if the mission comes with an automatic script (`auto.sh`), this
  command will call it. This script is supposed to complete the mission and
  call `gsh check`.
  This is useful for testing purposes, but also if using `gsh skip` is not
  sufficient. For example, if the mission's goal is to create a directory.
  `gsh auto` would ensure it is created correctly.
  Just like `gsh skip` and `gsh goto N`, this command will first ask for a
  password.

* `gsh index`: this will display the list of available missions, with their
  status. If you've used `skip` and `goto` a lot, this might come in handy.

* `gsh stat`, `gsh stat raw` and `gsh stat raw -v` display various statistics
  about the current game.

</details>
