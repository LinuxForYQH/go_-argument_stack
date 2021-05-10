package main

import "fmt"

func main() {
	A()
}

func A() {
	a := SetRbp(10) // 设置A栈帧的 Rbp 寄存器的值为 10
	B()
	BackRbp(a) // 恢复A栈帧的 Rbp 地址
}
func B() {
	C()
	v := GetBackRbp(1) // 往上跳一个栈帧的首部， 取出埋入的值 10
	fmt.Println(v)
}
func C() {
	v := GetBackRbp(2) // 往上跳一个两个栈帧的首部， 取出埋入的值 10
	fmt.Println(v)
}
