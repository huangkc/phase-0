# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [4] hours on this challenge.

# 0. Pseudocode

# Input: number of sides 
# Output: random number between 1 and the number of sides
# Steps:
# 1. create a die that accepts a number
# 2. generate an error message if the number is less than 1
# 3. generate a random number between the 1 and the number 


# 1. Initial Solution

class Die
  def initialize(sides)
  		@sides=sides
		if sides < 1
	    raise ArgumentError.new("Sides must be greater than 1")
		end
  end
  def sides
    # return number of sides
    @sides
  end
  def roll
    # generate random num between 1 and 6
    rand(sides)+1
  end
end

# 3. Refactored Solution

class Die
  
  attr_reader :sides

  def initialize(sides)
  	@sides=sides
  	if sides < 1
	   raise ArgumentError.new("Sides must be greater than 1")
	end
  end
  
  def roll
    # generate random num between 1 and 6
    rand(sides)+1
  end
end

# #4 Reflection
# What is an ArgumentError and why would you use one? 
# Argument errors are raised when the argument being passed in is of the wrong type or not within the allowable range.
# Also if the wrong number of arguments is passed, for example, missing arguments. 
# Argument errors provide can provide traceback information when an
# error occurrs in the flow of the program.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I implemented the random number generator method and the attribute reader method. I had to go through the documentation to 
# find out how to implement each of them.

# What is a Ruby class? The class is a blueprint that provides the behavior for objects.

# Why would you use a Ruby class? The class can be used to bundle methods together so we can
# create many objects that behave similarly. Classes can be passed around, send/receive
# information, and take on additional methods. 

# What is the difference between a local variable and an instance variable? Local variables 
# are accessible only within their methods, instance variables are not. Instance variables are declared
# with @ prefix, local variables are not. Local variables disappear after the method call. Instance
# variables keep their values between method calls. 
# Where can an instance variable be used? Instance variables can be used by any method in the class.