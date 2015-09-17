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
	
	if avg <= 100 && avg >= 90 
		return 'A'
	elsif avg <= 89 && avg >= 80 
		return 'B'
	elsif avg <= 79 && avg >= 70
			return 'C'
	elsif avg <= 69 && avg >= 60 
		return 'D'
	else return 'F'
	end
end


# 3. Refactored Solution

# Solution 1
def get_grade(array_1)	
	avg=array_1.reduce(:+)/array_1.length
	if avg <= 100 && avg >= 90 
		'A'
	elsif avg <= 89 && avg >= 80 
		'B'
	elsif avg <= 79 && avg >= 70 
		'C'
	elsif avg <= 69 && avg >= 60 
		'D'
	else 'F'
	end
end

#solution 2 using hash
def get_grade(array_1)	

grade = {
	90..100 => "A",
    80..89 => "B",
    70..79 => "C",
    60..69 => "D",
	0..69 => "F"
	}

avg=array_1.reduce(:+)/array_1.length

grade.each do |k,v|
	if k.include? avg
		return v
	end
	end
end
# 4. Reflection
# I  used the same code from the calculate grade exercise from last week and 
# just reversed the logic. I thought about using 'case' also, but Using a hash
# would actually be simpler. Plus the hash approach would allow you to put in + and - for each 
# letter grade.
