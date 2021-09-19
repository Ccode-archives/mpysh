import os

fn main() {
    mut com := ""
    mut com_ := ['']
    for {
        com = os.input(">> ")
        com_ = com.split(" ")
        println(com_[0])
    }
}
