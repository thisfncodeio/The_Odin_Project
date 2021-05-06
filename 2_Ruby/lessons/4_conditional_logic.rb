# == TRUTHY AND FALSY IN RUBY ==

# Falsy
nil #=> false
false #=> false

# Truthy
# (EVERYTHING ELSE)
"hello" #=> true
1 #=> true
0 #=> true
"" #=> true
"false" #=> true
[] #=> true
{} #=> true


######################################################################################


# == BASIC CONDITIONAL STATEMENTS ==

# if
if condition #=> code will run only if condition is true
  puts "Hello World"
end

puts "Hello World" if condition #=> If you're just doing a single thing then you can rewrite the code in one line

# else
if condition
  puts "hello"
else
  puts "goodbye"
end

# elsif
if condition
  puts "hello"
elsif other_condition
  puts "howdy"
else
  puts "goodbye"
end


###############################################################################

# == BOOLEAN LOGIC ==

# == (equals)
10 == 10 #=> true
10 == 11 #=> false
10 == "10" #=> false
10 == 10.0 #=> true

# != (not equals)
10 != 10 #=> false
10 != 11 #=> true
10 != "10" #=> true
10 != 10.0 #=> false

# > (greater than)
10 > 10 #=> false
10 > 11 #=> false
11 > 10 #=> true
11 > 10.0 #=> true

# < (less than)
10 < 10 #=> false
10 < 11 #=> true
11 < 10 #=> false
11 < 10.0 #=> false

# >= (greater than or equal to)
10 >= 10 #=> true
10 >= 11 #=> false
11 >= 10 #=> true
11 >= 10.0 #=> true

# <= (less than or equal to)
10 <= 10 #=> true
10 <= 11 #=> true
11 <= 10 #=> false
11 <= 10.0 #=> false

# eql? => checks that both the value and type are equal
10.eql?(10) #=> true
10.eql?(10.0) #=> false

# equal? => checks that the value, type, and memory location address are equal
10.equal?(10) #=> true (Because of the way that computers store integers in memory, this is true, they point to the same memory address)
10.equal?(10.0) #=> false
10.equal?("10") #=> false
"10".equal?("10") #=> false (Because of the way computers store strings in memory, creating a new string for each strig instance, these values point to different addresses in memory)

a = "apple"
b = a
a.equal?(b) #=> true (These variables point to the same location address in memory)


# <=> (spaceship operator) (Does not return 'true' or 'false'; Instead returns -1, 0, 1) (Commonly used in sorting functions)
# -1 => if the value on the left is less than the value on the right
# 0 => if the value on the left is equal to the value on the right
# 1 => if the vallue on the left is greater than the value on the right
10 <=> 15 #=> -1
10 <=> 10 #=> 0
15 <=> 10 #=> 1


###################################################################################


# == LOGICAL OPERATORS ==











###################################################################################


# == CASE STATEMENTS ==


###################################################################################


# == UNLESS STATEMENTS ==


###################################################################################


# == TERNARY OPERATOR ==











puts "Lesson Pending..."