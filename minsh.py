#!/usr/bin/env python3
import os

def exec_comm(com, com_, exists):
    split = com.split(';')
    split2 = com.split('&&')
    if len(split) > 1:
        print("don't use ; in commands.")
    elif len(split2) > 1:
        print("don't use && in commands")
    elif com_ == "exec":
        os.system("~/minsh-bin/" + com)
    elif exists == True:
        os.system(com)
    else:
        print("minsh: " + com_ + ": not found")



def exists_in_system_path(name):
    from distutils.spawn import find_executable
    return find_executable(name) is not None

while True:
    pwd = os.getcwd()
    com = input(pwd + " $ ")
    com_ = com.split(" ")
    exists = exists_in_system_path(com_[0])
    if not exists == False:
        exists == True
    if com_[0] == "cd":
        try:
            os.chdir(com_[1])
        except:
            print(com_[1] + " does not exist or is not a directory")
    elif com_[0] == "exit":
        break
    else:
        exec_comm(com, com_[0], exists)
