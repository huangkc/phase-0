# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?  A list of numerical scores
# What is the output? (i.e. What should the code return?)A letter grade A, B, C, D,E, or F
# What are the steps needed to solve the problem? 
# -Find the average of the scores.
# -Determine where the average falls in the ranges associated with letter grades
# -return the letter grade associated with the average

# 1. Initial Solution

def get_grade(array_1)
	
	num1=array_1.reduce(:+)/array_1.length
	
	if num1.to_i <= 100 && num1.to_i >= 90 
		return 'A'
	elsif num1.to_i <= 89 && num1.to_i >= 80 
		return 'B'
	elsif num1.to_i <= 79 && num1.to_i >= 70
			return 'C'
	elsif num1.to_i <= 69 && num1.to_i >= 60 
		return 'D'
	else return 'F'
	end
end


# 3. Refactored Solution




# 4. Reflection

# class Die
# 	def each 
# 		loop do
# 			yield rand(6)+1
# 		end
# 	end

# end
# 	d=Die.new
# 	d.each do |roll|
# 		if roll == 6 
