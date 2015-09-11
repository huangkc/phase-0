# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below

# My initial solution was going to split the address and then
# compare each word to CA, like: 

# def welcome(address)
# 	array1 = address.upcase.split(" ")
# 	array1.each do |x|
# 	 	if x == "CA" 
# 	 		return "Welcome to California"
# 	 	else 
# 	 		return "You should move to California"
# 	 	end
# 	 end
# end

#Using built-in methods
# def welcome(address)
# 	address.upcase.include?(" CA ")? "Welcome to California": "You should move to California"
# end

# def welcome(address)
# 	address.upcase.match(/ CA /)?"Welcome to California": "You should move to California"
# end




