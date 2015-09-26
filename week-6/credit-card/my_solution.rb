# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Marcus Davis].
# I spent [3] hours on this challenge.

# Pseudocode

# Input: credit card number
# Output: "true" if valid or "false" if not valid
# Steps: 
# Check if the card number is exactly 16 digits
# If it is, convert the number to a string and split that string into an array 
# Convert the even-number positions of the array into integers and double each of them
# Convert the array into a string and split each item of the array
# Convert each item of the array to integers
# Sum the array
# Check if the sum is divisible by 10
# Return true if divisible by 10 and falase otherwise

# Initial Solution

# class CreditCard
# def initialize(number)
# 	@number=number
# 	if @number.to_s.length != 16
# 		raise ArgumentError.new("Credit card number must be 16 digits!")
# 	end
# end

# def check_card
# 	number = @number.to_s.split("").map!{ |x| x.to_i}
# 	c=0
# 	while c < number.length
# 		if c.even?
# 		  number[c]=number[c]*2
# 		end
# 		c+=1
# 	end
# 	number.map!{|x| x.to_s.split("")}.flatten!.map!{|x| x.to_i}
#     sum = number.inject(0){ |sum, x| sum + x} 
#     sum%10==0?true:false
# end
# end

#Refactored solution

class CreditCard
def initialize(number)
	@number=number
	if @number.to_s.length != 16
		raise ArgumentError.new("Credit card number must be 16 digits!")
	end
end

def transform
	@number = @number.to_s.split(//).map!{ |x| x.to_i}
	c=0
	while c < @number.length
		if c.even?
			@number[c]=@number[c]*2
		end
		c+=1
	end
end

def sum
	@number.map!{|x| x.to_s.split(//)}.flatten!.map!{|x| x.to_i}
    sum = @number.inject(0){ |sum, num| sum + num} 
end

def validate
	sum%10==0?true:false
end

def check_card
	transform
	sum
	validate
end
end


# Reflection

# What was the most difficult part of this challenge for you and your pair?
# Figuring out how to translate the algorithm into code and how to implement
# the transformation on the credit card number.

# What new methods did you find to help you when you refactored?
# In the refactoring step, we chained the methods together when feasible.
# We also focused on separating each step into a
# method. We divided the code into three methods that can be called 
# inside the check_card method. 

# What concepts or learnings were you able to solidify in this challenge?
# Converting between integers, strings, and arrays back and forth. Also, calling
# methods inside a method.