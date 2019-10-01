package main

import "fmt"


func main() {
	fmt.Println(fib(7)) //Should print 13
}

func fib(n int) int{
	if n == 0{
		return 0
	}
	if(n <= 2){
		return 1
	}else{
		return fib(n-1)+fib(n-2)
	}
}
