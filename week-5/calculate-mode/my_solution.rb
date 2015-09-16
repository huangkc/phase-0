# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def mode(array)

		frequencies = Hash.new(0)
		
		array.each{|item| frequencies[item]+=1}

		# if frequencies.size == 1 
		# 	frequencies.each{|key, value| array_1<<key}
		# 	array_1

		# else array_1 = frequencies.sort.last
		# 	array_1[1]
 p frequencies
 p frequencies.sort_by{|key, value| value}
# 		if frequencies.sort.first==frequencies.sort.last
# 			frequencies.each{|key,value| array_1<<key}
	
	   frequencies=frequencies.sort_by{|key, value| value}
	   if frequencies.length == 1 return 

	   else

end
mode(["onion","banana","apple","apple"])



# 3. Refactored Solution




# 4. Reflection