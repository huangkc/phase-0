# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: "high", "low", "correct"
# Steps: 
# Define a class that takes an integer as answer.
# Define a method that takes an integer as guess.
# Define a method that determines if the guess is correct

# Initial Solution

# class GuessingGame
	
#   def initialize(answer)
#     @answer=answer 
#   end
  
#   def guess(input)
#   	@last_input=input

#   	if @last_input == @answer
#   		:correct
#   	elsif @last_input > @answer
#   		:high
#   	else 
#   		:low
#   	end  

#   end
  	
#   def solved?  	
#   	if @last_input==@answer 
#   		true
#   	else 
#   		false
#   end
# end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer=answer 
  end
  
  def guess(input)
  	@last_guess=input
  	if @last_guess == @answer 
		:correct
	elsif @last_guess > @answer 
		:high
	else :low
	end
  end
  	
  def solved?  	
  	@last_guess==@answer?true:false
  end
end


# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables represent states or characteristics shared 
# by similar objects but do not stay constant. Instance methods are like actions that can be
# performed with or by many different objects of the same category.

# When should you use instance variables? What do they do for you?
# Instance variables should be used with instance objects of a class. They can be used outside of methods
# and anywhere within the class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# At first I just used a local variable for the guess in the #guess method. To get the #solved? method to work, I had to change 
# the local variable for guess to an instance variable in order to pass its value to #solved? method.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols? Ruby processes symbols faster
# than strings. This may make a difference if there is a large amount of data. 
#Using symbols also takes up less memory than creating strings many times.