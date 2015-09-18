
# people = ["Kim Allen", 123, "Jenna Andersen", 456, "Un Choi", 789, "Kai Huang",
# 1010, "Joshua Monzon", 2100, "Bavid Black", 3200]


people = ["Kim", "Allen", "Jenna", "Mark", "Morgan", "John", "Kai", "Joshua", "Monzon", "Bavid", "Chris"]




group={}
group=people.group_by{ |name| name.length}
group.each{|name, length| p "#{name}: #{length}"}




# h=Hash.new(0)
# h.each do |name| 
# 	h[name]


# people.group_by{|name| name.length}









# What was the most interesting and most difficult part of this challenge?
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Was your approach for automating this task a good solution? What could have made it even better?
# What data structure did you decide to store the accountability groups in and why?
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?