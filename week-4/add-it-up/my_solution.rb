
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: m. melendez].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: list of numbers
# Output: sum of the list of numbers

# Steps to solve the problem.
# Create a container to hold the sum
# Make the starting value of sum equal to 0
# Go through the list of numbers
# Add numbers to the sum

# 1. total initial solution
def total(array_num)
  sum = 0
  array_num.each{|x| sum=sum+x}
  sum
end

# 3. total refactored solution
def total(array_num)
   array_num.inject{|sum,x| sum+x}
end

def total (array_1)
	array_1.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: a list of words
# Output: the list combined into a sentence

# Steps to solve the problem.
# Join the list of words with a space between each.
# Capitalize the first letter
# Add a period to the end of the sentence

# 5. sentence_maker initial solution

def sentence_maker(list_of_words)
	list_of_words.first.capitalize!
	str1 = list_of_words.join(' ')
	str1 << "."
	str1
end

# 6. sentence_maker refactored solution
def sentence_maker(list_of_words)
  list_of_words.join(' ').capitalize<<"."
end




