#Release 2
#Full name greeting

puts 'Hello, what\'s your first name?'
first_name = gets.chomp

puts "What\'s your middle name?"
middle_name = gets.chomp

puts "What\'s your last name?"
last_name = gets.chomp

puts 'Pleased to me you, ' + first_name + ' ' + middle_name + 
' ' + last_name 

#Bigger favorite number
puts 'What is your favorite number?'
favorite_number = gets.chomp
bigger_number = favorite_number.to_i + 1.to_i
puts bigger_number.to_s + ' is a bigger favorite number.'

=begin 
Release 4

Returning a Formatted Address 
https://github.com/huangkc/phase-0/blob/master/week-4/address/my_solution.rb)

Defining Math Methods 
https://github.com/huangkc/phase-0/blob/master/week-4/math/my_solution.rb)

How do you define a local variable?
variable_name = value

How do you define a method?
def method_name (arguments)
		code block
end

What is the difference between a local variable and a method? 
A local variable is accessible within a limited scope in a program.  
A method is a reusable block of code written to perform a specific task. 

How do you run a ruby program from the command line?
ruby <filename>.rb

How do you run an RSpec file from the command line? 
rspec <file_name>.spec.rb

What was confusing about this material? What made sense?
Different data types and how they interact was confusing. 
The purpose of methods and how the code is supposed to be structureds made sense.

=end
