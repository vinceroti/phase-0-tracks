class Santa

  #syntactic sugar allows access to methods and attributes outside of class without getter and setter
  #getter 
  attr_reader  :age #reads age

  #setter/#getter
  attr_accessor :gender, :ethnicity #allows for reading and writing of gender and ethnicity

  def initialize(gender, ethnicity) #passes data to attributes
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
    @age = 0
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name) #removes reindeer IF iteration matches parameter and re-adds at end
    @reindeer_ranking.delete_if { |reindeer| reindeer == reindeer_name}
    @reindeer_ranking << reindeer_name
  end

  def random_birthday #uses rand method to create random birthday
    age = rand(140)
    @age = age
  end

  #displays info about attributes

  def about 
   p @gender 
   p @ethnicity 
   p @age
  end
end

#Driver Code
santa = Santa.new("Male", "White") #creates a new instance of Santa class with male and white arguments

santa.speak #santa says his merry jingle
santa.eat_milk_and_cookies("sugar cookie") #santa eats his selected sugar cookie
puts "This Santa is #{santa.age}, #{santa.gender}, and is #{santa.ethnicity}." #interpolation shows the current status of santa
santa.gender = "Female" #changes gender to female
santa.get_mad_at("Vixen") #moves vixen to end of reindeer array
santa.celebrate_birthday #santa ages by 1
puts "This Santa is now #{santa.age} and is #{santa.gender}!" #shows new status of santa class santa


genders = ["Agender", "Female", "Bigender", "Male", "Female", "Gender Fluid", "AUTO MATIC TRANSMISSION FLUID", "Christmas Dust", "N/A"] #array of genders
ethnicities = ["Black", "Latino", "White", "Japanese-African", "prefer not to say", "White Chocolate", "Milky Way", "Mystical Creature (unicorn)", "N/A"] #array of ethnicities

# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

counter = 0 #initializes counter at 0

while counter < 200 #loops 200 times 
  counter += 1 #increases counter by 1
  random_santa = Santa.new(genders.sample(1), ethnicities.sample(1)) #inputs random array elements for genders and ethnicities
  random_santa.gender = random_santa.gender.join(" ") #removes brackets from arrays for clean interpolation
  random_santa.ethnicity = random_santa.ethnicity.join(" ") #removes brackets from arrays for clean interpolation
  random_santa.random_birthday #gives santa random birthday
  puts "This Santa is #{random_santa.age}, #{random_santa.gender}, and is #{random_santa.ethnicity}." #shows status of random santa!
end



