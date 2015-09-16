# Pad an Array

# I worked on this challenge [with: Farman Pirzada]

# I spent [6] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
# What is the input? An array of strings and/or numbers

# What is the output? (i.e. What should the code return?) An array padded with values, if applicable

# What are the steps needed to solve the problem?
# Determine whether the array needs to be padded or not
# Check if the minimum size is less than or equal to the length of the array, 
# if so, return the array. If not, then add optional value to the end of the arraythe appropriate number of times.

#1. Initial solution
# def pad!(array, min_size, value=nil) #destructive
#     if min_size <= array.length || min_size == 0 
#       array
#     else
#       array.fill(value, array.length..min_size-1)
#     end
#   array 
# end
 
# #3. Refactored Solution

# def pad!(array, min_size, value = nil) #destructive
#     if min_size <= array.length || min_size == 0 
#       array
#     else
#        array.fill(value, array.length..min_size-1)
#     end
#     array
# end

# def pad(array, min_size, value = nil) #non-destructive
# 	new_array=array.dup 
#     if min_size <= array.length || min_size == 0
#      new_array
#    	else 
#    		new_array.fill(value, array.length..min_size-1)
#    	end
#    	new_array	
# end

def pad!(array, min_size, value = nil) #destructive
   (min_size <= array.length || min_size == 0)? array:array.fill(value, array.length..min_size-1)
end

def pad(array, min_size, value = nil) #non-destructive
	new_array=array.dup 
    (min_size <= array.length || min_size == 0)? new_array:	new_array.fill(value, array.length..min_size-1)
end
# 4. Reflection

# -Were you successful in breaking the problem down into small steps?
# We were successful in breaking the problem down into small steps.

# -Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have? 
# We were able to translate conditionals and output statements but had a more difficult time with padding the array. Another difficulty was to translate into code the non-destructive method.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them? 
# The destructive method passed the tests. The non-destructive method did not pass all of the tests mainly because it altered the original array. We had to figure out how to make the method return a new object.

# When you refactored, did you find any existing methods in Ruby to clean up your code? We did find existing methods for doing what we wanted to do and were able to reduce the length of method.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# Our solution was readable. We selected descriptive variable names.

# What is the difference between destructive and non-destructive methods in your own words? Destructive method alters the original data structure while non-destructive methods return a new data structure but do not alter the original. 


