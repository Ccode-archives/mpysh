import os

fn exec_comm(com string, com_ string, exists bool) {
    if exists == true {
        output := os.execute(com)
        println(output.output)
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
            os.chdir(com_[1]) or { println("minsh") }
        } else {
            exec_comm(com, com_[0], exists)
        }
    }
}
