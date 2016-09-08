class Santa

  def initialize(gender, ethnicity) #passes data to attributes
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  #getter methods for attributes
  def age
    @age
  end

  def ethnicity
    @ethnicity 
  end

  def gender
    @gender
  end

  #setter methods
  def gender=(new_gender)
    @gender = new_gender
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

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete_if { |reindeer| reindeer == reindeer_name}
    @reindeer_ranking << reindeer_name
  end

  #displays info about attributes

  def about 
   p @gender 
   p @ethnicity 
   p @age
  end
end
#Driver Code

santa = Santa.new("Male", "White") #creates a new instance of Santa class

santa.speak
santa.eat_milk_and_cookies("sugar cookie")
puts "This Santa is #{santa.age}, #{santa.gender}, and is #{santa.ethnicity}."
santa.gender = "Female"
santa.get_mad_at("Vixen")
santa.celebrate_birthday
puts "This Santa is now #{santa.age} and is #{santa.gender}!"


#Release 1
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "AUTO MATIC TRANSMISSION FLUID", "Christmas Dust", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "White Chocolate", "Milky Way" "Mystical Creature (unicorn)", "N/A"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end
