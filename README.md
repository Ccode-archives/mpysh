# minsh
a minimal shell in python.

# The shell was originally writen in vlang
This was changed because there was a problem with their execute command.

# Difference from other shells
Instead of relative path for commands the shell will use `exec` for executing scripts in current directory.
```bash
# example
exec sample-script.sh
```
# How to install as a shell
1. Run build.sh.
2. Add the path to the minsh executable to /etc/shells.
3. Run `chsh` and enter the path to the minsh executable.
4. Restart system!

# Is it usable?
For basic shell use. If used as a sripting lang in a shabang it will just open the prompt. It will not store any varibles as it is not a scripting language, it will use system variables though.
> These are intended features.

# TODO
None right now!
