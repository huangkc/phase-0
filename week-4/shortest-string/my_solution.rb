# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

# This was my initial solution but I could not get the test to pass

# def shortest_string(list_of_words)
# 	if list_of_words.empty? return nil
# 	else 
#    	ar=[]
#    	list_of_words.each {|word| ar.push word.length}
#   	list_of_words.each do |word|
#    	 	if word.length == ar.min
#    		 	word
# 	    	end
#   	end
#  	end
# end



# def shortest_string(list_of_words)
#   list_of_words.min_by{|word| word.length}
# end