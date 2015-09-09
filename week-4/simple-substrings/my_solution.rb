# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below


def welcome(address)
	if address.upcase.match(/ CA /)
	    return "Welcome to California"
	else 
		return "You should move to California"
	end
end

=begin
def welcome(address)
	if address.upcase.include?" CA "
	    return "Welcome to California"
	else 
		return "You should move to California"
	end
end
=end

