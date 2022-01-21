package foo

import "github.com/davecgh/go-spew/spew"

func Hello() string {
	return "Hello!!!"
}

func Dump(v interface{}) {
	spew.Dump(v)
}
