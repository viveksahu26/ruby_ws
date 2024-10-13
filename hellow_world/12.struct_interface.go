package main

import "fmt"

// Define an interface
type Greeter interface {
	SayHello()
	SayGoodMorning()
}

// Define a type that implements the interface
type Person struct{}

func (p Person) SayHello() {
	fmt.Println("Hello!")
}

func (p Person) SayGoodMorning() {
	fmt.Println("Good morning!")
}

func main() {
	var g Greeter
	g = Person{}
	g.SayHello()       // Outputs: Hello!
	g.SayGoodMorning() // Outputs: Good morning!
}

/*
Comparison
- Ruby Modules (Instance Methods): Similar to Go interfaces in that they
  define methods that need to be included in a class (type) to be used.
- Ruby Modules (Class Methods): Do not have a direct equivalent in Go.
  They are more like standalone functions that can be called directly on the module.

Key Differences
- Ruby: Modules can contain both instance and class methods.
  Instance methods need to be included in a class, while class
  methods can be called directly.
- Go: Interfaces only define method signatures. Types must
  implement these methods to satisfy the interface.
  Interfaces cannot contain method implementations.
*/
