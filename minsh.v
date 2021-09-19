import os

fn main() {
    com := ""
    com_ := []
    for {
        com = os.input(">> ")
        com_ = com.split(" ")
        println(com_[0])
    }
}
