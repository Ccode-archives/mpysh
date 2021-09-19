import os

fn exec_comm(com string, exists string) {
    if exists == true {
        os.execute(com)
    } else {
        println("minsh: " + com_[0] + ": not found")
    }
}

fn main() {
    mut com := ""
    mut com_ := ['']
    mut exists := true
    for {
        com = os.input(">> ")
        com_ = com.split(" ")
        exists = exists_in_system_path(com_[0])
        if com_[0] == "cd" {
            os.chdir(com_[1]) or { println("minsh") }
        } else {
            exec_comm(com, exists)
        }
    }
}
