# == Variables ==

## Declaring Variables

name = "Bob"
age = 30
age_in_five_years = age + 5 #=> 35
age += 5 #=> 35


## Shorthand Assignment Operators

+= #=> Add and assign
-= #=> Subtract and assign
*= #=> Multiply and assign
/= #=> Divide and assign


## Naming Variables

# bad variable names

a = 30 #=> Although legal, this is a poor variable name because you have no idea what 'a' is supposed to be respresenting
string = "Hello World" #=> This variable is also poorly names for the same reasons

# good variable names

age = 30
name = "Bob"
greeting = "Hello World"
is_male = true #=> Variable names containing multiple words should use the snake_case naming convention


## Types OF Variables

# Constant Variables
# 1. Constants are used to store data that never needs to change (Ruby will, however, allow you to change a constant variable, but you shouldn't)
# 2. Constants are declared in ALL_CAPS by convention
# 3. Constants CANNOT be declared in method definitions
# 4. Constants are available throughout the entire application

MY_CONSTANT = "I can be accessed form anywhere! MUAHAHAAA!"

# Global Variables
# 1. Declared by starting the variable name with '$'
# 2. Are available throughout the entire application

$my_global = "I can also be accessed from anywhere!"

# Class Variables
# 1. Declared by starting the variable name with '@@'
# 2. Can be accessed by instances of the class and by the class itself
# 3. Can only be initialized at the class level, outside of any method definitions

@@num_of_instances = 0

# Instance Variables
# 1. Declared by starting the variable name with '@'
# 2. Each instance gets it's own copy of the instance variable

@my_instance_variable = "I am available to the current instance of the class"

# Local Variables
# 1. Most common variable type in use
# 2. Your everyday common variable
# 3. Obeys all scope boundaries

my_variable = "Hello Ruby"


## Variables Are References

# Information stored in a variable is stored in memory on the computer which means that every variable is essentially a reference/pointer to an address in memory. 

my_hometown = "Washington, DC"
bobs_hometown = my_hometown

puts my_hometown #=> "Washington, DC"
puts bobs_hometown #=> "Washington, DC"

my_hometown.upcase! #=> "WASHINGTON, DC"
puts my_hometown #=> "WASHINGTON, DC"
puts bobs_hometown #=> "WASHINGTON, DC" (Notice how 'bobs_hometown' is also effected because it is pointing to the same location address in memory)

first_num = 1
second_num = first_num
first_num = 2
puts second_num #=> 1 (Remember that 'second_num' was not assigned the value of 'first_num' but instead the location address in memory, so when the location address that 'first_num' was pointing to changed, the address that 'second_num' is pointing to is still the same.)

first_num = 10
second_num = first_num
first_num = 20
second_num = first_num
puts second_num #=> 20


puts "Lesson Complete!"