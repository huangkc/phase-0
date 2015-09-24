# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Marcus Davis].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: credit card number
# Output: "true" if valid or "false" if not valid
# Steps: 
# Check if the card number is exactly 16 digits
# If it is, double every other digit starting with the 
# second to the last until th first
# Sum all untouched digits and doubled digits
# divid the sum by 10
# if divisible, then valid

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

# def initialize(number)
# 	@number=number
# 	if @number.to_s.length != 16
# 		raise ArgumentError.new("Credit card number must be 16 digits!")
# end
# end

# def check_card

# 	array_even=[]
# 	array_odd=[]
# 	number = @number.to_s.split(//)
	# c=0
	# while c < 16
	#  array_even<<number[c]
	#  c+=2
	# end
	# c=1
	# while c < 16
	# 	array_odd<<number[c]
	# 	c+=2
	# end
#     p array_even
#     p array_odd
#     p array_even.map!{ |x| x.to_i*2}
# 	p array_even.map!{ |x| x.to_s.split(//)}
# 	p array_even.flatten!
# 	p array_even.map!{|x| x.to_i}

#  	p array_odd.map!{ |x| x.to_i}

#  	p array_final = array_even+array_odd
    
#     sum=array_final.inject(0){ |sum, x| sum + x} 
    	
#     if sum%10==0 
#     	true
#     else
#     	false
#     end
    
# end
# end


# Refactored Solution

class CreditCard

 def initialize(number)
 	@number=number
	
	if @number.to_s.length != 16
		raise ArgumentError.new("Credit card number must be 16 digits!")
	end
 end
 def check_card
	number = @number.to_s.split(//)
	number.map!{ |x| x.to_i}
	c=0
	while c < number.length
			if c.even?
			number[c]=number[c]*2
			end
			c+=1
	end
	number.map!{|x| x.to_s.split(//)}.flatten!.map!{|x| x.to_i}
    sum = number.inject(0){ |sum, x| sum + x} 
    sum%10==0?true:false
    
end

end






# Reflection

# What was the most difficult part of this challenge for you and your pair?
# It was to figure out how to translate the algorithm into code and how to implement
# those operations.
# What new methods did you find to help you when you refactored?
# What concepts or learnings were you able to solidify in this challenge?
# Converting between integers, strings, and arrays back and forth. Also
# combining elements of various datatypes.