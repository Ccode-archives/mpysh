import os

fn exec_comm(com string, com_ string, exists bool) {
    split := com.split(';')
    split2 := com.split('&&')
    if split.len > 1 {
        println("don't use ; in commands.")
    } else if split2 > 1 {
        println("don't use && in commands")
    } else if exists == true {
        output := os.execute(com)
        print(output.output)
    } else {
        println("minsh: " + com_ + ": not found")
    }
}

fn main() {
    mut com := ""
    mut com_ := ['']
    mut exists := true
    for {
        com = os.input(">> ")
        com_ = com.split(" ")
        exists = os.exists_in_system_path(com_[0])
        if com_[0] == "cd" {
            os.chdir(com_[1]) or { println(com_[1] + " does not exist or is not a directory") }
        } else if com_[0] == "exit" {
            exit(0)
        } else {
            exec_comm(com, com_[0], exists)
        }
    }
}
