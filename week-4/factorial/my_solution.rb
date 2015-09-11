# Factorial

# I worked on this challenge [by myself, with: m. melendez].


# Your Solution Below
def factorial(number)
  # Your code goes here
  number == 0? 1:(1..number).inject{|x,y| x*y}
 
end

# if number == 0 return 1 
#   else
#   (1..number).inject{|x,y| x*y}
#  end