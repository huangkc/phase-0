# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: a list of strings
# Output: one of the strings from the list selected at random
# Steps:   


# Initial Solution

class Die
    
  def initialize(labels)

  	@labels=labels
  	if labels.length == 0
	   raise ArgumentError.new("Input is empty")
	end
  end

  def labels
  	@labels
  end

  def sides
  	@sides
  end

  def roll
	# generate random combo of the elements of the array
    x = rand(labels.length)
    labels[x]
  end
end

die=Die.new(["A","B","C","D","E"])
die.roll

# Refactored Solution

class Die
  
  attr_reader :labels, :sides

  def initialize(labels)
  	@sides=labels.length
  	@labels=labels
  	
  	if labels.length == 0
	   raise ArgumentError.new("Input is empty!")
	end
  end

  def roll
    labels[rand(sides)]
  end
end

# Reflection
# What were the main differences between this die class and 
#the last one you created in terms of implementation? 
# This die class has to randomize the input and return it.

# Did you need to change much logic to get this to work? 
# I did not have to change the logic very much.

# What does this exercise teach you about making code that 
#is easily changeable or modifiable? 
# Repetition and duplication in the code may help make 
#the code easier to modify.

# What new methods did you learn when working on this 
#challenge, if any? 
# I learned about attr_reader and attr_writer methods.

# What concepts about classes were you able to solidify 
#in this challenge? 
# How to define and initialize a class, how to define 
#instance methods, and how to declare instance variables.