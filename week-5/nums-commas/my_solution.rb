




# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?)The integer separated by commas
# What are the steps needed to solve the problem?
# Convert the integer to a string and check if the length is at least 4. 
# If the length is shorter than 4, return the integer.
# if the length is longer than 4 and even: calculate where the commas need to go
# if the length is longer than 4 and odd: calculate where the commas need to go
# Make a new empty string and insert the digits from the integer one-by-one and insert the commas
# where they are supposed to go.
# Since the number of digits in the new number will be different from the number 
# of digits in the old number, we will need two different counters to iterate
# through the numbers.

# 1. Initial Solution

def nums_commas(number)

    if number.to_s.length < 4 
        p number.to_s 
    else
      new_number = []
      num_array = []
      num_array = number.to_s.split(//).reverse
      p num_array
      i=0
      while i <= number.to_s.length-3
         new_number = new_number << num_array[i..i+2]
         i+=3
      end 
       if number.to_s.length % 6 !=0
         new_number << num_array[i..number.to_s.length-1]        
       end
  
      p new_number
  end
end

nums_commas(10000)


# # 2. Refactored Solution


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# I started by solving the problem by hand to see what the steps would be. Then I tried to translate each step into pseudocode.
# I considered comparing the old with the new number and transforming the number itself. Also trid to reverse the number string before iterating.

# Was your pseudocode effective in helping you build a successful initial solution? It helped me break down the problem and create the basic structure for the 
# code. As I followed the pseudocode, I could see where the holes were inthe logic the code that needed to be filled in. If I had time to do more research I would
# try to figure out how to calculate which positions need to have commas. 

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# How did you initially iterate through the data structure? I was going to use a while loop or something similar to iterate through the strings.

# Do you feel your refactored solution is more readable than your initial solution? Why?