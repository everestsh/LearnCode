package list

import "fmt"

func List(n int) {
	for i := 0; i <= n; i++ {
		fmt.Printf( /*format:*/ "%d+%d=%d\n", i, n-i, n)
	}
}
