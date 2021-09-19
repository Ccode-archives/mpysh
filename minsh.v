import os
mut com := ""
mut com_ := []
fn main() {
    com = os.input(">> ")
    com_ = com.split(" ")
    println(com_[0])
}
