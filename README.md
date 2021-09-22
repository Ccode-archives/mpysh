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

# It is usable enough to build itself
```
~ $ git clone https://github.com/Ccode-lang/minsh.git minsh-test
Cloning into 'minsh-test'...
remote: Enumerating objects: 134, done.
remote: Counting objects: 100% (134/134), done.
remote: Compressing objects: 100% (129/129), done.
remote: Total 134 (delta 65), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (134/134), 29.74 KiB | 5.95 MiB/s, done.
Resolving deltas: 100% (65/65), done.
~ $ cd minsh-test
/home/pi/minsh-test $ chmod +x build.sh
/home/pi/minsh-test $ exec build.sh
```
This was run for testing, it works perfectly.
# TODO
None right now!
