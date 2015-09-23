# Your Names
# 1) Hana Worku
# 2) Kai Huang

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Bakery Serving Size portion calculator.
def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #library has: items you could make and serving sizes
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if menu.keys.include?(item_to_make)==false
  
  #Checks if input is in the library and raises error if not
  
  serving_size = menu.values_at(item_to_make)[0]
  leftovers = order_quantity % serving_size
  #Check for left-over ingredients
  
  if leftovers == 0
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{leftovers} leftovers. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("guava", 5)
# p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection
# What did you learn about making code readable by working on this challenge?
# Naming variables with descriptive names can make the code easier to read
# Complex conditional logic can be difficult to read. Simplify the logic as much
# as possible and the code should reflect it.

# Did you learn any new methods? What did you learn about them? 
# We learned #values_at, #select, #keys, and #include?.
#
# What did you learn about accessing data in hashes? 
# We learned how to access hash keys, hash values, and hash key-value pairs. We
# also learned how to pass information into a hash and how to iterate through the 
# hash to find data.s

# What concepts were solidified when working through this challenge?
# How to access data in hashes, hash syntax, raising exceptions, and refactoring 
#for readability.