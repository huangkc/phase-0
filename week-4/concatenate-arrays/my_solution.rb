# Concatenate Two Arrays

# I worked on this challenge [by myself ].


# Your Solution Below

def array_concat(array_1, array_2)
	
	c=0
	while c < array_2.length
		array_1<<array_2[c]
		c+=1
	end
	#array_1.concat array_2
end