# Calculate a Grade

# I worked on this challenge [with: Eunice Choi].

# Your Solution Below

def get_grade(num1)

	if num1.to_i <= 100 && num1.to_i >= 90 
		return 'A'
	elsif num1.to_i <= 89 && num1.to_i >= 80 
		return 'B'
	elsif num1.to_i <= 79 && num1.to_i >= 70
			return 'C'
	elsif num1.to_i <= 69 && num1.to_i >= 60 
		return 'D'
	else return 'F'
	end
end
