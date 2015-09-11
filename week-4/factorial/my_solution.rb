# Factorial
# I worked on this challenge [by myself, with: m. melendez].

# Your Solution Below

def factorial(number)
	if number != 0 
		product = 1
		while number > 1
			product = product*number 
			number-=1
		end
		product
	else return 1
	end
end

def factorial(number)
if number == 0 return 1 
  else
  (1..number).inject{|x,y| x*y}
  end
end

def factorial(number)
  number == 0? 1:(1..number).inject{|x,y| x*y}
end

