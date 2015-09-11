# Analyze the Errors

# I worked on this challenge [by myself ].
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

 # cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax
# 4. What additional information does the interpreter provide about this type of error?
#Keyword "end" is missing.
# 5. Where is the error in the code?
#The interpreter did not expect the method to end
# 6. Why did the interpreter give you this error?
#Without the keyword "end" the interpreter expected more input

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#undefined variable/method.
# 3. What additional information does the interpreter provide about this type of error?
#south_park is undefined.
# 4. Where is the error in the code?
#south_park is not properly defined as a variable or a method
# 5. Why did the interpreter give you this error?
#Interpreter does notknow wehteher south_park is a method or variable

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#51
# 2. What is the type of error message?
#undefined method.
# 3. What additional information does the interpreter provide about this type of error?
#"cartman" is undefined.
# 4. Where is the error in the code?
#cartman() is not properly defined as a method.
# 5. Why did the interpreter give you this error?
#The interpreter does not know what this object should be.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#66
# 2. What is the type of error message?
#Wrong number of arguments.
# 3. What additional information does the interpreter provide about this type of error?
#0 arguments expected but got 1 argument.
# 4. Where is the error in the code?
#The method does not take an argument but one was given when the method was called.
# 5. Why did the interpreter give you this error?
#Either the method should take an argument or the argument should be removed from the method call.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#85
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#Expected 1 argument and got 0
# 4. Where is the error in the code?
#The method took 1 argument but the method call gave 0
# 5. Why did the interpreter give you this error?
#Either the method should take no argument or one should be added to the method call.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#106
# 2. What is the type of error message?
#Argument error.
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments.
# 4. Where is the error in the code?
#The method takes 2 arguments while the method call gave only 1.
# 5. Why did the interpreter give you this error?
#The interpreter did not get all of the expected input for the method.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#125
# 2. What is the type of error message?
#Type error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#The multiplication symbol
# 5. Why did the interpreter give you this error?
#The interpreter does not know how convert "Respect my authoritay" to a number

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#140
# 2. What is the type of error message?
#Zero division
# 3. What additional information does the interpreter provide about this type of error?
#Attempt to divide by zero
# 4. Where is the error in the code?
#The division operation
# 5. Why did the interpreter give you this error?
#It is not able to perform the operation

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#156
# 2. What is the type of error message?
#Load error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file
# 4. Where is the error in the code?
#'require_relative'
# 5. Why did the interpreter give you this error?
#The interpreter could not find "cartmans_essay.md" in the directory.

# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# "Unexpected end of input" 

# # How did you figure out what the issue with the error was?
# I analyzed the error message and used what I know about Ruby to figure out what the issue was.

# # Were you able to determine why each error message happened based on the code? 
# Yes except the last one since the syntax appears to be correct.

# When you encounter errors in your future code, what process will you follow to help you debug?
#Go to the line number of the error, analyze the content of the error message, and track down the error.