# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#the require relative on line 10 pulls the data from state_data.rb file and links the two files.
require_relative 'state_data'
#require_relative doesn't need direct path while require does

class VirusPredictor

#RG - Initializes the attributes of the arguments provided and set the default attributes for every instance of the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# VR Virus_effects takes the population density, population, and state and predicts the speed of the virus and how many deaths
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
#Any methods below private will not be accessed outside the class. We would want to use it to keep certain info confidential.
  private
#RG The method calculates the rate at which the population will die based on what tier the population is within. Floor rounds the float down to the nearest integer. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end
#VR speed_of_spread uses another tiered system that once it reaches the condition it will change the rate of speed
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
    states = VirusPredictor.new(state, STATE_DATA[state] [:population_density], STATE_DATA[state] [:population])
    states.virus_effects
end



#=======================================================================
# Reflection Section

# one hash has a symbol and the other hash using => instead. They are also nested. The first hash list the state and the other hash lists all the data associated.
# require_relative doesn't need a direct path, assuming that the file it's getting it's input from is in the root  of it. Require needs a direct path in order to find the file it's working with
# using a .each loop and stating the key and value also .each_key
# virus_effect is calling for parameters/arguments that are already global attributes of that class
# using .each loops to iterate and make more instances of a class