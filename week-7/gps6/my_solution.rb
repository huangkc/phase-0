# Virus Predictor

# I worked on this challenge [with: M. Melendez].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads the companion file 
#'state_data'. Require_relative allows you
#to load a file within the same directory and gives 
#you access to the constants from another file. 
#Require does not check the local directory if 
#an absolute path is not provided. 
#STATE_DATA has a hash inside a hash. State names 
# are strings and population and population density are 
# symbols.
#STATE_DATA is a constant and its scope is global.

require_relative 'state_data'

class VirusPredictor

#This method initializes the class with the 
#required input and creates instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls two private methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
#calculates the predcicted number of deaths based on population, 
# population desnsity, etc.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    pop_counter = 50
    counter = 0.1
    4.times do 
      if @population_density >= pop_counter 
        @number_of_deaths = (@population * counter).floor 
      end
      counter += 0.1
      pop_counter += 50
    end
     puts "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end
#calculates and outputs the speed of spread of a virus across the state

  def speed_of_spread 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    # speed = 2.5
    # if @population_density >= 50 && @population_density < 100 then speed = 2.0
    # elsif @population_density >= 100 &&  @population_density < 150 then speed = 1.5
    # elsif @population_density >= 150 && @population_density < 200 then speed = 1.0 
    # elsif @population_density >= 200 then speed = 0.5
    # end

    speed =2.5
    counter = 50
    4.times do 
      if @population_density >= counter then speed-=0.5 end
      counter+=50  
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  
  end
end

#=======================================================================

# DRIVER CODE
# Can make this a class method
STATE_DATA.each{ |key, value| VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects}
# Can make this a class method

#  alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#  alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown 
#in the state_data file?
#STATE_DATA is a hash inside a hash. State names 
# are strings and population and population density are 
# symbols.

# What does require_relative do? How is it different from require?
# require_relative loads the companion file 
#'state_data'. Require_relative allows you
#to load a file within the same directory and gives 
#you access to the constants from another file. 
#Require does not check the local directory if 
#an absolute path is not provided. 

# What are some ways to iterate through a hash?
#each and conditional loops can be used to iterate
#through a hash.

# When refactoring virus_effects, what stood out to you 
#about the variables, if anything?
# Instance variables are already visible and do not need to be 
#passed as arguments.

# What concept did you most solidify in this challenge?
# How to access elements inside a nested hash; scope of 
#variables in a class; private, public, and class methods.
