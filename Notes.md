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

### Regular Expressions

* Regular expressions can be used to search for matching content within a string
  and will return nil if the search fails.
  
* You can use special operators to help you be creative with you search parameters.

> * A question mark, `?`, after a search character means that it is optional.

> * A plus, `+`, indicates one or more.

> * An asterisk, `*`, indicates zero or more.
  
* Keep in mind that regular expression searches are inherent 'dumb' and 'greedy'.
  They will return the first match that they come across and will try to fulfill
  the 'longest' possible match.
  
* You can use character classes to search for multiple characters at the same time.
  In the array `array = ['cat', 'bat']`, you can search for both elements with the
  regular expression string, `array[/[cb]at/]`. You can also use ranges such as 
  `[0-9]` and even `[A-Za-z]`.
  
* You can negate character classes by using a carat, `^`, within the brackets - 
  `[^A-Z]` means NOT capital A through Z. You can also use capital letters to negate
  special character classes - `/d+/` means NOT a string of digits.
  
* Some characters get a special shortcut. 

> * `\d` means any digit.

> * `\w` means any alpha-numerical character.

> * `\s` means any whitespace character including tab, `\t`, and newline, `\n`.
  
> * `.` means any non-newline character (basically, anything).

* Some characters help orient you in a search.

> * `\A` means the beginning of a string and `\z` means the end of a string.

> * `^` means the beginning of any line and `$` means to the end of any line.

> * `\b` anchors to word boundaries.

* Parentheses, `()`, can be used to group content. `/(ha)+/` would match
  `'hahaha'` in the string `'ahahahablarg'`. They can also be used to 
  'capture' grouped content. You can even assign variables to groups with
  the dollar sign, `$`.
  
* A pipe, `|`, means OR.
  
* You can use regular expression methods to do wide searches.
  
> * `.scan` is like find all.

> * `.sub` is like find and replace.

> * `.gsub` is like find and replace all.

### Methods

* If you use the `*` character for the arguments of a method, it will
  allow you to pass in as many arguments as you want.
  
* You can set methods to be private within a class by using the private method.
  If your method is called `test`, you can set it as `private :test`. You can also
  simply write `private` in a class and then set all of your private methods below.

### Keyword Arguments

* Keyword arguments allow you to set default values for arguments passed into a method.
  The big difference with regular defaults is that you can call keyword arguments out
  of order and the method will still function properly.
  
```
def test (a: 2, b: 1)
    a - b
end

test(b: 5, a: 6) => 1
```

### Constants

* Constants are a way to permanently assign values in a program. Constants can be
  called by their relative path, `CONSTANT`, or their absolute path, `::CONSTANT`.
  
* Nested classes inherit constants from their enclosing classes and subclasses
  inherit constants from their parent classes.

* If you have a subclass that is also nested within a high class, that nested subclass
  will inherit constants from the enclosing class, NOT the parent class.

### Control Statements

* `if` statements return values based on the truthiness/falsiness of the tested condition.

* You can use special syntax to return values based on a conditional statement like so:
  `test ? value_if_true : value_if_false`
  
* The `unless` statement can be interpreted as 'if not'. `unless true` == `if != true`

### True and False

* `false` and `nil` are falsey. Everything else is truthy.

### Exceptions

* You can create your own Exception class that is a subclass of other Exceptions.

* Using a `rescue` clause can allow you output a message based on Exceptions
  raised during a block of code and prevent termination of the entire program.
  
* You can `raise` specific errors in a program and also create a specific message
  that might help you identify when the problem occurred.
  
* The `ensure` clause is also helpful to guarantee that some code is run.

### Iteration

* `Array.find` can locate the first element matching a criterion.

* The `Array.inject` method can be very useful in applying operations over
  all of the elements in an array. Read RubyDoc for details on syntax/use.

### Blocks

* Methods can take curly bracket blocks, arguments, and even do-end blocks. In
  fact, methods can detect if they have been called with a block using the
  `block_given?` clause.
  
* Blocks are highly adaptable and can be used to modify variables in the code
  or be called explicitly by assigning the block to an object.
  
* Blocks can also be called explicitly into a method by using the `&` assignment.

```
  def method_with_explicit_block(&block)
    block.call(10)
  end
  method_with_explicit_block { |n| n * 2 } == 20 # returns true
```
