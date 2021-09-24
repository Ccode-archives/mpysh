#!/usr/bin/env python3
import os

# execute commands
def exec_comm(com, com_, exists):
    # check for line end and and statements
    split = com.split(';')
    split2 = com.split('&&')
    if len(split) > 1:
        print("mpysh: don't use ; in commands.")
    elif len(split2) > 1:
        print("mpysh: don't use && in commands.")
    # exec builtin
    elif com_ == "exec":
        os.system("~/mpysh-bin/" + com)
    # normal command
    elif exists == True:
        os.system(com)
    # command does not exist
    else:
        print("mpysh: " + com_ + ": not found")


# exists in path helper
def exists_in_system_path(name):
    from distutils.spawn import find_executable
    return find_executable(name) is not None
# home var
home = os.getenv("HOME")
while True:
    # set prompt
    pwd = os.getcwd()
    prompt = pwd
    if pwd == home:
        prompt = "~"
    com = input(prompt + " $ ")
    # misc
    com_ = com.split(" ")
    exists = exists_in_system_path(com_[0])
    if not exists == False:
        exists == True
    # cd command
    if com_[0] == "cd":
        change = com_[1].replace("~", home)
        try:
            os.chdir(change)
        except:
            print(com_[1] + " does not exist or is not a directory")
    # exit command
    elif com_[0] == "exit":
        break
    else:
    # execute command
        exec_comm(com, com_[0], exists)
