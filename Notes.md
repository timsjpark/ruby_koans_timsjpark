# Notes from Ruby Koans exercises

### Asserts

* Asserts simply evaluate an expression to test true/false.

* Asserts can also take an argument that allow them to print out a
  message when the test fails.

* An effective way to write asserts is with the 'assert_equal' message.

### Nil

* Nil is an object that is equivalent to NULL in other languages. It almost
  acts like an 'empty' object.
  
* NoMethodError is a class for error messages

* You can test if an object is nil with the `.nil?` method

* In terms of observable effect, `object.nil?` and `object == nil` will
  do the same thing as they both return the same result.

### Objects

* Everything is an object. EVERYTHING!

* All objects have a unique object ID

* Some objects, like numbers, have a fixed object ID.
  For example, the object_ID for `0` is `1`.

### Arrays

* The colon, `:` denotes a symbol in Ruby. Symbols have string and integer 
  values and cannot be changed like variables. 

* You can search from the end of an array with negative index values [-1]

* The array methods `unshift` and `shift` will add and remove items at the
  beginning of the array. `push` and `pop` are also methods that add and
  remove items, but only at the end of the array.

### Array Assignment

* You can create multiple, parallel array assignments with the code
  formatted like `a, b = [x, y]`.
  
* Without the splat operator (*) all extra values in parallel assignments
  will go untouched `a, *b = [x, y, z]`.

### Hashes

* Hashes assign values to a key, which is a symbol. You can find the elements
  of a hash with their key (arrays use indices).

* The `fetch` method might be preferable to calling a key with `hash[:key]`
  because fetch will return a `KeyError` if the key doesn't exist where
  calling the key index will return `nil`.
  
* 
