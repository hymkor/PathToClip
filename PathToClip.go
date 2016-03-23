package main

import (
	"github.com/atotto/clipboard"
	"os"
)

func main() {
	args := os.Args
	if len(args) >= 2 {
		clipboard.WriteAll(args[1])
	}
}
