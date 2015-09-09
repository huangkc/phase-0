# I worked on this challenge [with: Eunice Choi].


# Your Solution Below

def valid_triangle?(a, b, c)
	((a+b>c) && (b+c>a) && (a+c>b))? true:false
end

=begin
#This is the code before refactoring
def valid_triangle?(a, b, c)
  if a+b>c && b+c>a && a+c>b
  	return "true"
  else 
  	return "false"
	end
end
=end

