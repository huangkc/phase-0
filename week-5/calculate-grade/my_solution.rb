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
	
	avg=array_1.reduce(:+)/array_1.length
	
	if avg.to_i <= 100 && avg.to_i >= 90 
		return 'A'
	elsif avg.to_i <= 89 && avg.to_i >= 80 
		return 'B'
	elsif avg.to_i <= 79 && avg.to_i >= 70
			return 'C'
	elsif avg.to_i <= 69 && avg.to_i >= 60 
		return 'D'
	else return 'F'
	end
end


# 3. Refactored Solution


def get_grade(array_1)	
	avg=array_1.reduce(:+)/array_1.length
	if avg.to_i <= 100 && avg.to_i >= 90 
		'A'
	elsif avg.to_i <= 89 && avg.to_i >= 80 
		'B'
	elsif avg.to_i <= 79 && avg.to_i >= 70 
		'C'
	elsif avg.to_i <= 69 && avg.to_i >= 60 
		'D'
	else 'F'
	end
end


# 4. Reflection

