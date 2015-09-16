# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Sam Purcell]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array of numbers or strings
# What is the output? (i.e. What should the code return?) The most frequent values from the array
# What are the steps needed to solve the problem?
# Create a hash
# Create a variable called highest frequency
# Iterate through array
# Check if array element is in the new_hash
# If true, add 1 to value of that key, else add element as a key to hash and make value 1
# Check if value is greater than the highest frequency
# If greater, set value of the key equal to highest frequency
# Check if each value in the has is equal to the highest frequency and keep in hash if it is
# Return array of keys with highest frequency 


# 1. Initial Solution
def mode(array)
  mode_hash=Hash.new {|key, value| value = 1}
  largest_mode=0
  array.each do |item|
    if mode_hash.has_key?(item)
      mode_hash[item] += 1
    else
      mode_hash[item] = 1
    end
    if mode_hash[item] > largest_mode
      largest_mode = mode_hash[item]
    end
  end
  mode_hash.keep_if {|key,value| value == largest_mode }
  return mode_hash.keys
end

# 3. Refactored Solution
def mode(array)
  mode_hash=Hash.new {|key, value| value = 1}
  largest_mode=0
  array.each do |item|
    mode_hash[item] +=1 
    if mode_hash[item] > largest_mode
      largest_mode = mode_hash[item]
    end
	end
  mode_hash.keep_if {|key,value| value == largest_mode }
  mode_hash.keys
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why? We used a hash so we could keep track of the items in the array and their frequency
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? I was more successful breaking this problem down than before.
# What issues/successes did you run into when translating your pseudocode to code? We had some difficulty making sure the hash values were properly filled in.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used #each to iterate through the array. Adding key/value pairs was not difficult but had to add the highest frequency variable in the loop. Used #keep_if to determine which values to keep. And we used #keys to return the array of the keys.







