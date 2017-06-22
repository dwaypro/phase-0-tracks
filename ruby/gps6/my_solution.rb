# Virus Predictor

# I worked on this challenge [by myself, with: Gabriela Alessio Robles ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative --> allows you to link local files and have access to the data, and you don't need to specify the directory
# require --> allows you to access to data in a file, but you have to specify the path

require_relative 'state_data'

class VirusPredictor

# When initialized it stores the data into the instance variables that can be used within the following methods
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls and wraps the predicted deaths and speed spread methods to work with the instance variables, and "stitches" the two result strings together

  def virus_effects
      predicted_deaths
      speed_of_spread
  end

#The private method limits the scope and accessibility of the other methods below the calling. 

  private

#Calculates deaths depending on population density
  def predicted_deaths
    case @population_density

      when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
      else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

 #Calculates death rate in months based on population density

  def speed_of_spread
  # (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density

    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#Each "hash level" uses a different sytax. The outer hash is using a hash rocket while the inner 
#is using a symbol

# What does require_relative do? How is it different from require?
# require_relative allows the user to incorporate a file that is located within the immediate directory.
# require needs the directory to be specified, or a url provided. 

# What are some ways to iterate through a hash?
# In this assignment we were able to iterate through a hash by using the key from another hash. 
# THis made accessing key values a simple task.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#The variables that were being used were instance variables. This means that the parameters were unnecessary
#We were able to get rid of the parameters and simply call the methods within virus_effects

# What concept did you most solidify in this challenge?
# THis challenge reinforced even further the many different ways of sharing information between methods, as well as the proper syntax
