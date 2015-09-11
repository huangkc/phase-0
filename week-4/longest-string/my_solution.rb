# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# This was my initial solution but I could not get the test to pass

# def longest_string(list_of_words)
# 	if list_of_words.empty? return nil
# 	else 
#    	ar=[]
#    	list_of_words.each {|word| ar.push word.length}
#    	list_of_words.each do |word|
#    	 	if word.length == ar.max
#	    	 	word
# 		   	end
# 		end
#    end
# end


# def longest_string(list_of_words)
#   # Your code goes here!
#   list_of_words.max_by{|word| word.length}
# end