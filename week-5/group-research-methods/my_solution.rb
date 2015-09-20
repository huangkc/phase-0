# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  
  source.grep(/#{thing_to_find}/)
end

# p my_array_finding_method(i_want_pets, "t")


def my_hash_finding_method(source, thing_to_find)
new_array = source.select {|k, v| v == thing_to_find}.keys
end
# p my_hash_finding_method(my_family_pets_ages, 3)
# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.collect! do |x| 
    if x.is_a?(Integer) 
      x+=thing_to_modify
    else x
    end
  end


end
def my_hash_modification_method!(source, thing_to_modify)
  source.each{|key,value| source[key] = value+thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
# I used #collect! to iterate through the array to alter its contents. 
# Since the method has to be destructuve, I added the "!" at the end of "collect".
# I used #is_a? to check if each element in the array is an integer.
# This method returns true if the element is an integer, in which case "thing_to_modify" will be added to it.
# I used #each to iterate through the hash to modify the values. The
# values can be changed by accessing the key through "source[key] =".
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
# p my_array_deletion_method!(["cat", "dog", "iguana", "shoe"], "o")
# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|item| item.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|name, age| name.include?(thing_to_delete)}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#