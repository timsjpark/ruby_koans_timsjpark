# Notes from Ruby Koans exercises

### About asserts

* Asserts simply evaluate an expression to test true/false.

* Asserts can also take an argument that allow them to print out a
  message when the test fails.

* An effective way to write asserts is with the 'assert_equal' message.

### About nil

* Nil is an object that is equivalent to NULL in other languages. It almost
  acts like an 'empty' object.
  
* NoMethodError is a class for error messages

* You can test if an object is nil with the `.nil?` method

* In terms of observable effect, `object.nil?` and `object == nil` will
  do the same thing as they both return the same result.
