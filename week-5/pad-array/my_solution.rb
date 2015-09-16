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

# Which data structure did you and your pair decide to implement and why?
 # We used arrays. We thought that made sense because input and output are both arrays.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? I had a much easier time this time. I have a better understanding to how to write pseudocode as a result of having more practice.

# What issues/successes did you run into when translating your pseudocode to code?
# We were able to translate conditionals and output statements but had a more difficult time with padding the array. Another difficulty was to translate into code the non-destructive method.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We tried to use “while” and similar loops but adopted an enumerable method to add values to the array. They were not difficult to implement but it took some time to understand the method and the syntax from practice and reading documentation. 



