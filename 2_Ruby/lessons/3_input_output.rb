# == Output Commands ==

print "Hello World" #=> Hello World (Returns nil; Cursor stays on same line)
print("Hello World")
# print converts the entire object into a string running to_s on the entire object as a whole
print [1, nil, 3] #=> [1, nil, 3]

puts "Hello World" #=> Hello World (Returns nil; Cursor moves to new line)
puts("Hello World")
# puts attempts to convert each indidivual object to a string running to_s on each element
puts [1, nil, 3] #=> 1
                 #=> 
                 #=> 3

p "Hello World" #=> "Hello World" (Returns object as is)
p("Hello World")
# p shows the "raw" version of the element and is great for debugging
p [1, nil, 3] #=> [1, nil, 3] (No conversion to strings take place and elements retain their original types)

putc "Hello World" #=> H (The rarely used putc method only outputs a single character)
putc("Hello World")


#########################################################################


# == Input Commands

gets #=> Used to get user input
name = gets #=> User input can be saved in a variable
name = gets.chomp #=> You can use the 'chomp' method to remove the newline character (\n) that comes at the end of the users input when they hit [Enter]
name = gets.chomp()


##################################################################


puts "Lesson Complete!"