# minsh
a minimal shell in python.

# The shell was originally writen in vlang
This was changed because there was a problem with there execute command.

# Difference from other shells
Instead of relative path for commands the shell will use `exec` for executing scripts in current directory.
```bash
# example
exec sample-script.sh
```

# TODO
1. use relative path in pwd before prompt
