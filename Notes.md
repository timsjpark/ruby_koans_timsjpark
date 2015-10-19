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
  
* You can set default hash values -- `x = Hash.new('default')`. You can also
  set a default hash object -- `x = Hash.new('')`. If you set a default hash
  object, you can add to that object with a redirect method, much like the
  one in command line -- `x[1] << 'first_string'` - in this case, the `[1]`
  key isn't really doing anything, but it's required or else ruby will complain.
  
* You can also set default hash values for each new key with a block of code.
  `hash = Hash.new {|hash, key| hash[key] = [] }`. Now, anytime you create a
  new key, it will default to an empty array if you don't pass it a value.

### Strings

* If you have tricky strings with lots of special characters, you can deal with
  them by using flexible quotes. `string = %!Put some stuff in here!`.
  
* Using HEREDOC is a slightly better way to print multiple lines because you
  won't end up with a leading `\n` like you do with flexible strings.
  
* You can use the shovel operator (`<<`) or the plus-equals (`+=`) to concatenate
  to a string. Ruby programmers tend to favor the shovel operator because it will
  change all objects that are also equal to the modified object.

* Double-quoted strings will interpret escape characters.

* Strings all have a unique object ID, like everything else in Ruby.

### Symbols

* Symbols are internal objects whose object ID remains the same, even when it
  is assigned to different variables.
  
* Method names get internally stored as symbols.

* Symbols can be made from strings and will retain the same object ID. However, if
  you convert a symbol to a string, the object ID will change.
  
* You can use interpolation to create symbols.
 
* Because symbols are not strings, you can't use interesting string methods on
  symbols, such as `.reverse.` or the `+` method.
