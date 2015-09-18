# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?)The integer separated by commas
# What are the steps needed to solve the problem?
# First check if the length of the integer is at least 4. 
# If the length is shorter than 4, return the integer.
# if the length is longer than 4 and even: calculate where the commas need to go
# if the length is longer than 4 and odd: calculate where the commas need to go
# Make a new variable and insert the digits from the integer one-by-one and insert the commas
# where the commas are supposed to go.

# 1. Initial Solution

def nums_commas(number)
length = number.to_s.length 
new_number=""

if length <4
	return number
else
	if number % 2 == 0  #if number is even
		#calculate where the commass need to go		
		#iterate through number.to_s
		#check if the position should be a digit or a comma. 
		#Insert comma into new_number if the position needs to be a comma, else insert the digit

	else  #if number is odd
		#same process as above

	end
	return new_number
end
end

# 2. Refactored Solution


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?


# # Was your pseudocode effective in helping you build a successful initial solution? It helped me break down the problem and create the basic structure for the 
# code. As I followed the pseudocode, I could see where the holes were inthe logic the code that needed to be filled in.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# How did you initially iterate through the data structure? I was going to use a while loop or something similar to iterate through the string.

# Do you feel your refactored solution is more readable than your initial solution? Why?