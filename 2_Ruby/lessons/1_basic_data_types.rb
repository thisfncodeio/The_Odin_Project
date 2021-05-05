# == NUMBERS ==

## Math Operators

# Addition
2 + 2 #=> 4

# Subtraction
5 - 4 #=> 1

# Multiplication
3 * 3 #=> 4

# Division
10 / 5 #=> 2

# Exponent
2 ** 2 #=> 4
3 ** 3 #=> 81
4 ** 4 #=> 256

# Modulus
10 % 3 #=> 1 (3 does not divide evenly into 10, there's a remainder of 1)
10 % 2 #=> 0 (2 divides evenly into 10, no remainder)


## Integers and Floats

16 / 3 #=> 5 (Even though the result of this operation is supposed to produce a decimal (ie. floating-point) number, because 2 whole numbers were used, a whole number is returned and the decimal is dropped)

16 / 3.0 #=> 5.333 (Because at least one of the numbers was a float, the result will be a float)
16 / 4.0 #=> 4.0
16.0 / 4 #=> 4.0


## Converting Number Types

# Integer => Float
15.to_f #=> 15.0
15.to_f() #=> 15.0

# Float => Integer
15.0.to_i #=> 15
15.9.to_i #=> 15 (Notice how the decimal place was dropped, there is NO rounding)
15.0.to_i() #=> 15


## Some Useful Number Methods

# even?
4.even? #=> true
3.even? #=> false
4.even?() #=> true

# odd?
3.odd? #=> true
4.odd? #=> false
3.odd?() #=> true


################################################################################################


# == STRINGS ==

## Concatenation

# (+) plus operator
"Hello " + "World " + "!" #=> "Hello World!"

# (>>) shovel operator
"Hello " << "World " << "!" #=> "Hello World!"

# concat method
"Hello ".concat("World ").concat("!") #=> "Hello World!"


## Substrings

"GitHub"[0] #=> "G" (Subtring a single index value)
"GitHub"[0..1] #=> Gi (Subtring from a starting and ending range)
"GitHub"[0, 4] #=> "GitH" (Substring from a starting and ending index)
"GitHub"[-1] #=> "b" (You can sebstring in the opposite direction using negative numbers)


## Escape Characters

"\\" #=> Used if you need to include a backslash in your string
"\b" #=> [Rarely] Used to enter a backspace
"\r" #=> Used to go to a new line
"\n" #=> [Most popular] Used to go to a new line
"\s" #=> Used to enter a space chatacter
"\t" #=> Used to include a tab space
"\"" #=> Used if you need to include double quotes in your string and your string is also surrounded by double quotes
'\'' #=> (Used if you need to include single quotes in your string and your string is also surrounded by single quotes


## Interpolation

place = "World"
puts "Hello, #{place}!" #=> "Hello, World!"
puts 'Hello, #{place}!' #=> "Hello, #{place}!" (OOPS! String interpolation only works on strings surrounded by double quotes)


## Common String Methods

# capitalize => Used to capitalize the first character of the string (Returns a new string)
"hello world".capitalize #=> "Hello world"
"hello world".capitalize() #=> "Hello world"

# include? => Used to check if the string contains a character or sequence of characters (Returns true or false)
"hello world".include?("ell") #=> true
"hello world".include?("wor") #=> true
"hello world".include?("Wor") #=> false

# upcase => Used to convert the string to all uppercase letters (Returns a new string)
"hello world".upcase #=> "HELLO WORLD"
"hello world".upcase() #=> "HELLO WORLD"

# downcase => Used to convert the string to all lowercase letters (Returns a new string)
"Hello World".downcase #=> "hello world"
"HELLO WORLD".downcase() #=> "hello world"

# empty? => Used to check if the string does not contain any characters (Returns true or false)
"hello world".empty? #=> false
"hello world".empty?() #=> false
"".empty? #=> true
"".empty?() #=> true

# length => Returns the length of the string (Returns a number)
"hello world".length #=> 11
"hello world".length() #=> 11

# reverse => Reverses the string in decsending order (Returns a new string)
"hello world".reverse #=> "dlrow olleh"
"hello world".reverse() #=> "dlrow olleh"

# split => Converts the string into an array delimited by the provided character (Returns a array)
"hello world".split #=> ["hello", "world"]
"hello world".split() #=> ["hello", "world"]
"hello world".split("") #=> ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
"hello world".split(",") #=> ["hello world"] (Because the dividing character is not found the whole sentence is returned)
"hello, world".split(",") #=> ["hello", " world"]

# strip => Removes the beginning and ending whitespace in a string (Returns a new string)
" hello world  ".strip #=> "hello world"
" hello world  ".strip() #=> "hello world"
" hello world  !".strip #=> "hello world  !"

# sub => Substitute the first matching character in the string with the provided character
"hell0 w0rld".sub("0", "o") #=> "hello w0rld"

# gsub => Substitute all matching characters in the string with the provided character
"hell0 w0rld".gsub("0", "o") #=> "hello world"

# insert => Insert the provided string at the provided index location
"hello world".insert(-1, "!") #=> "hello world!"

# delete => Delete all instances of the provided character
"hello world".delete("l") #=> "heo word"
" h e l l o    w o r l d ".delete(" ") #=> "helloworld"
" h e l l o    w o r l d ".delete("") #=> " h e l l o    w o r l d "


## Converting Other Objects To Strings

# Number => String
10.to_s #=> "10"
10.to_s() #=> "10"

# Nil => String
nil.to_s #=> ""
nil.to_s() #=> ""

# Symbol => String
:hello.to_s #=> "hello"
:hello.to_s() #=> "hello"


################################################################################################


# == SYMBOLS ==










puts "Pending..."